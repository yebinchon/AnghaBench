
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int fdt_block_size; TYPE_1__* pdev; scalar_t__ fdt_protect_sec_cmd; scalar_t__ fdt_unprotect_sec_cmd; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_10__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 int OPTROM_BURST_DWORDS ;
 int OPTROM_BURST_SIZE ;
 int QLA_SUCCESS ;
 int cpu_to_le32 (int) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;
 scalar_t__ flash_data_addr (struct qla_hw_data*,int) ;
 int memcpy (void*,int*,int) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int,...) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_warn ;
 int qla24xx_erase_sector (TYPE_2__*,int) ;
 int qla24xx_protect_flash (TYPE_2__*) ;
 int qla24xx_unprotect_flash (TYPE_2__*) ;
 int qla24xx_write_flash_dword (struct qla_hw_data*,scalar_t__,int) ;
 int qla2x00_load_ram (TYPE_2__*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int
qla24xx_write_flash_data(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
 int ret;
 uint32_t liter;
 uint32_t sec_mask, rest_addr;
 uint32_t fdata;
 dma_addr_t optrom_dma;
 void *optrom = ((void*)0);
 struct qla_hw_data *ha = vha->hw;


 if ((IS_QLA25XX(ha) || IS_QLA81XX(ha) || IS_QLA83XX(ha)) &&
     !(faddr & 0xfff) && dwords > OPTROM_BURST_DWORDS) {
  optrom = dma_alloc_coherent(&ha->pdev->dev, OPTROM_BURST_SIZE,
      &optrom_dma, GFP_KERNEL);
  if (!optrom) {
   ql_log(ql_log_warn, vha, 0x7095,
       "Unable to allocate "
       "memory for optrom burst write (%x KB).\n",
       OPTROM_BURST_SIZE / 1024);
  }
 }

 rest_addr = (ha->fdt_block_size >> 2) - 1;
 sec_mask = ~rest_addr;

 ret = qla24xx_unprotect_flash(vha);
 if (ret != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x7096,
      "Unable to unprotect flash for update.\n");
  goto done;
 }

 for (liter = 0; liter < dwords; liter++, faddr++, dwptr++) {
  fdata = (faddr & sec_mask) << 2;


  if ((faddr & rest_addr) == 0) {

   if (ha->fdt_unprotect_sec_cmd)
    qla24xx_write_flash_dword(ha,
        ha->fdt_unprotect_sec_cmd,
        (fdata & 0xff00) | ((fdata << 16) &
        0xff0000) | ((fdata >> 16) & 0xff));
   ret = qla24xx_erase_sector(vha, fdata);
   if (ret != QLA_SUCCESS) {
    ql_dbg(ql_dbg_user, vha, 0x7007,
        "Unable to erase erase sector: address=%x.\n",
        faddr);
    break;
   }
  }


  if (optrom && (liter + OPTROM_BURST_DWORDS) <= dwords) {

   memcpy(optrom, dwptr, OPTROM_BURST_SIZE);

   ret = qla2x00_load_ram(vha, optrom_dma,
       flash_data_addr(ha, faddr),
       OPTROM_BURST_DWORDS);
   if (ret != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0x7097,
        "Unable to burst-write optrom segment "
        "(%x/%x/%llx).\n", ret,
        flash_data_addr(ha, faddr),
        (unsigned long long)optrom_dma);
    ql_log(ql_log_warn, vha, 0x7098,
        "Reverting to slow-write.\n");

    dma_free_coherent(&ha->pdev->dev,
        OPTROM_BURST_SIZE, optrom, optrom_dma);
    optrom = ((void*)0);
   } else {
    liter += OPTROM_BURST_DWORDS - 1;
    faddr += OPTROM_BURST_DWORDS - 1;
    dwptr += OPTROM_BURST_DWORDS - 1;
    continue;
   }
  }

  ret = qla24xx_write_flash_dword(ha,
      flash_data_addr(ha, faddr), cpu_to_le32(*dwptr));
  if (ret != QLA_SUCCESS) {
   ql_dbg(ql_dbg_user, vha, 0x7006,
       "Unable to program flash address=%x data=%x.\n",
       faddr, *dwptr);
   break;
  }


  if (ha->fdt_unprotect_sec_cmd &&
      ((faddr & rest_addr) == rest_addr))
   qla24xx_write_flash_dword(ha,
       ha->fdt_protect_sec_cmd,
       (fdata & 0xff00) | ((fdata << 16) &
       0xff0000) | ((fdata >> 16) & 0xff));
 }

 ret = qla24xx_protect_flash(vha);
 if (ret != QLA_SUCCESS)
  ql_log(ql_log_warn, vha, 0x7099,
      "Unable to protect flash after update.\n");
done:
 if (optrom)
  dma_free_coherent(&ha->pdev->dev,
      OPTROM_BURST_SIZE, optrom, optrom_dma);

 return ret;
}
