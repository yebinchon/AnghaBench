
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int fdt_block_size; int flash_data_off; TYPE_1__* pdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int OPTROM_BURST_DWORDS ;
 int OPTROM_BURST_SIZE ;
 int QLA_SUCCESS ;
 int cpu_to_le32 (int) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;
 int memcpy (void*,int*,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int,int) ;
 int ql_dbg_p3p ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_warn ;
 int qla2x00_load_ram (struct scsi_qla_host*,scalar_t__,int,int) ;
 int qla82xx_erase_sector (struct qla_hw_data*,int) ;
 int qla82xx_protect_flash (struct qla_hw_data*) ;
 int qla82xx_unprotect_flash (struct qla_hw_data*) ;
 int qla82xx_write_flash_dword (struct qla_hw_data*,int,int ) ;

__attribute__((used)) static int
qla82xx_write_flash_data(struct scsi_qla_host *vha, uint32_t *dwptr,
 uint32_t faddr, uint32_t dwords)
{
 int ret;
 uint32_t liter;
 uint32_t sec_mask, rest_addr;
 dma_addr_t optrom_dma;
 void *optrom = ((void*)0);
 int page_mode = 0;
 struct qla_hw_data *ha = vha->hw;

 ret = -1;


 if (page_mode && !(faddr & 0xfff) &&
     dwords > OPTROM_BURST_DWORDS) {
  optrom = dma_alloc_coherent(&ha->pdev->dev, OPTROM_BURST_SIZE,
      &optrom_dma, GFP_KERNEL);
  if (!optrom) {
   ql_log(ql_log_warn, vha, 0xb01b,
       "Unable to allocate memory "
       "for optrom burst write (%x KB).\n",
       OPTROM_BURST_SIZE / 1024);
  }
 }

 rest_addr = ha->fdt_block_size - 1;
 sec_mask = ~rest_addr;

 ret = qla82xx_unprotect_flash(ha);
 if (ret) {
  ql_log(ql_log_warn, vha, 0xb01c,
      "Unable to unprotect flash for update.\n");
  goto write_done;
 }

 for (liter = 0; liter < dwords; liter++, faddr += 4, dwptr++) {

  if ((faddr & rest_addr) == 0) {

   ret = qla82xx_erase_sector(ha, faddr);
   if (ret) {
    ql_log(ql_log_warn, vha, 0xb01d,
        "Unable to erase sector: address=%x.\n",
        faddr);
    break;
   }
  }


  if (optrom && (liter + OPTROM_BURST_DWORDS) <= dwords) {

   memcpy(optrom, dwptr, OPTROM_BURST_SIZE);

   ret = qla2x00_load_ram(vha, optrom_dma,
       (ha->flash_data_off | faddr),
       OPTROM_BURST_DWORDS);
   if (ret != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0xb01e,
        "Unable to burst-write optrom segment "
        "(%x/%x/%llx).\n", ret,
        (ha->flash_data_off | faddr),
        (unsigned long long)optrom_dma);
    ql_log(ql_log_warn, vha, 0xb01f,
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

  ret = qla82xx_write_flash_dword(ha, faddr,
      cpu_to_le32(*dwptr));
  if (ret) {
   ql_dbg(ql_dbg_p3p, vha, 0xb020,
       "Unable to program flash address=%x data=%x.\n",
       faddr, *dwptr);
   break;
  }
 }

 ret = qla82xx_protect_flash(ha);
 if (ret)
  ql_log(ql_log_warn, vha, 0xb021,
      "Unable to protect flash after update.\n");
write_done:
 if (optrom)
  dma_free_coherent(&ha->pdev->dev,
      OPTROM_BURST_SIZE, optrom, optrom_dma);
 return ret;
}
