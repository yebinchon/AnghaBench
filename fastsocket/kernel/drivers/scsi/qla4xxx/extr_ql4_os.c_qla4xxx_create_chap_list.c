
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int flt_chap_size; int flt_region_chap; } ;
struct scsi_qla_host {int port_num; TYPE_2__* pdev; int * chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int FLASH_CHAP_OFFSET ;
 int FLASH_RAW_ACCESS_ADDR ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int MAX_CHAP_ENTRIES_40XX ;
 int QLA_SUCCESS ;
 int * dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int memcpy (int *,int *,int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4xxx_get_flash (struct scsi_qla_host*,int ,int,int) ;
 int * vmalloc (int) ;

__attribute__((used)) static void qla4xxx_create_chap_list(struct scsi_qla_host *ha)
{
 int rval = 0;
 uint8_t *chap_flash_data = ((void*)0);
 uint32_t offset;
 dma_addr_t chap_dma;
 uint32_t chap_size = 0;

 if (is_qla40XX(ha))
  chap_size = MAX_CHAP_ENTRIES_40XX *
     sizeof(struct ql4_chap_table);
 else


  chap_size = ha->hw.flt_chap_size / 2;

 chap_flash_data = dma_alloc_coherent(&ha->pdev->dev, chap_size,
       &chap_dma, GFP_KERNEL);
 if (!chap_flash_data) {
  ql4_printk(KERN_ERR, ha, "No memory for chap_flash_data\n");
  return;
 }
 if (is_qla40XX(ha))
  offset = FLASH_CHAP_OFFSET;
 else {
  offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);
  if (ha->port_num == 1)
   offset += chap_size;
 }

 rval = qla4xxx_get_flash(ha, chap_dma, offset, chap_size);
 if (rval != QLA_SUCCESS)
  goto exit_chap_list;

 if (ha->chap_list == ((void*)0))
  ha->chap_list = vmalloc(chap_size);
 if (ha->chap_list == ((void*)0)) {
  ql4_printk(KERN_ERR, ha, "No memory for ha->chap_list\n");
  goto exit_chap_list;
 }

 memcpy(ha->chap_list, chap_flash_data, chap_size);

exit_chap_list:
 dma_free_coherent(&ha->pdev->dev, chap_size,
   chap_flash_data, chap_dma);
}
