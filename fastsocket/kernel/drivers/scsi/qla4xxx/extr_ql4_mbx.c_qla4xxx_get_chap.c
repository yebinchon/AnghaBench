
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int flt_region_chap; int flt_chap_size; } ;
struct scsi_qla_host {int port_num; int chap_dma_pool; TYPE_1__ hw; } ;
struct ql4_chap_table {int cookie; int name; int secret; } ;
typedef int dma_addr_t ;


 scalar_t__ CHAP_VALID_COOKIE ;
 int DEBUG2 (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int FLASH_CHAP_OFFSET ;
 int FLASH_RAW_ACCESS_ADDR ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int QL4_CHAP_MAX_NAME_LEN ;
 int QL4_CHAP_MAX_SECRET_LEN ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int __constant_cpu_to_le16 (scalar_t__) ;
 scalar_t__ __le16_to_cpu (int ) ;
 struct ql4_chap_table* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct ql4_chap_table*,int ) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int memset (struct ql4_chap_table*,int ,int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_get_flash (struct scsi_qla_host*,int ,int,int) ;
 int strncpy (char*,int ,int ) ;

int qla4xxx_get_chap(struct scsi_qla_host *ha, char *username, char *password,
       uint16_t idx)
{
 int ret = 0;
 int rval = QLA_ERROR;
 uint32_t offset = 0, chap_size;
 struct ql4_chap_table *chap_table;
 dma_addr_t chap_dma;

 chap_table = dma_pool_alloc(ha->chap_dma_pool, GFP_KERNEL, &chap_dma);
 if (chap_table == ((void*)0))
  return -ENOMEM;

 chap_size = sizeof(struct ql4_chap_table);
 memset(chap_table, 0, chap_size);

 if (is_qla40XX(ha))
  offset = FLASH_CHAP_OFFSET | (idx * chap_size);
 else {
  offset = FLASH_RAW_ACCESS_ADDR + (ha->hw.flt_region_chap << 2);



  if (ha->port_num == 1)
   offset += (ha->hw.flt_chap_size / 2);
  offset += (idx * chap_size);
 }

 rval = qla4xxx_get_flash(ha, chap_dma, offset, chap_size);
 if (rval != QLA_SUCCESS) {
  ret = -EINVAL;
  goto exit_get_chap;
 }

 DEBUG2(ql4_printk(KERN_INFO, ha, "Chap Cookie: x%x\n",
  __le16_to_cpu(chap_table->cookie)));

 if (__le16_to_cpu(chap_table->cookie) != CHAP_VALID_COOKIE) {
  ql4_printk(KERN_ERR, ha, "No valid chap entry found\n");
  goto exit_get_chap;
 }

 strncpy(password, chap_table->secret, QL4_CHAP_MAX_SECRET_LEN);
 strncpy(username, chap_table->name, QL4_CHAP_MAX_NAME_LEN);
 chap_table->cookie = __constant_cpu_to_le16(CHAP_VALID_COOKIE);

exit_get_chap:
 dma_pool_free(ha->chap_dma_pool, chap_table, chap_dma);
 return ret;
}
