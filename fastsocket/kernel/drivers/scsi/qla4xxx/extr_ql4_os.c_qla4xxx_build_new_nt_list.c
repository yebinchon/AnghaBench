
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {int fw_ddb_dma_pool; } ;
struct qla_ddb_index {int fw_ddb_idx; int list; } ;
struct list_head {int dummy; } ;
struct dev_db_entry {scalar_t__ iscsi_name; } ;
typedef int dma_addr_t ;


 int DDB_DS_NO_CONNECTION_ACTIVE ;
 int DEBUG2 (int ) ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MAX_DEV_DB_ENTRIES ;
 int MAX_DEV_DB_ENTRIES_40XX ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int RESET_ADAPTER ;
 struct dev_db_entry* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct dev_db_entry*,int ) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int list_add_tail (int *,struct list_head*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4xxx_get_fwddb_entry (struct scsi_qla_host*,int,struct dev_db_entry*,int ,int *,int*,int*,int*,int *,int *) ;
 int qla4xxx_is_session_exists (struct scsi_qla_host*,struct dev_db_entry*) ;
 int qla4xxx_sess_conn_setup (struct scsi_qla_host*,struct dev_db_entry*,int ,int) ;
 scalar_t__ strlen (char*) ;
 int vfree (struct qla_ddb_index*) ;
 struct qla_ddb_index* vmalloc (int) ;

__attribute__((used)) static void qla4xxx_build_new_nt_list(struct scsi_qla_host *ha,
          struct list_head *list_nt)
{
 struct dev_db_entry *fw_ddb_entry;
 dma_addr_t fw_ddb_dma;
 int max_ddbs;
 int fw_idx_size;
 int ret;
 uint32_t idx = 0, next_idx = 0;
 uint32_t state = 0, conn_err = 0;
 uint16_t conn_id = 0;
 struct qla_ddb_index *nt_ddb_idx;

 fw_ddb_entry = dma_pool_alloc(ha->fw_ddb_dma_pool, GFP_KERNEL,
          &fw_ddb_dma);
 if (fw_ddb_entry == ((void*)0)) {
  DEBUG2(ql4_printk(KERN_ERR, ha, "Out of memory\n"));
  goto exit_new_nt_list;
 }
 max_ddbs = is_qla40XX(ha) ? MAX_DEV_DB_ENTRIES_40XX :
         MAX_DEV_DB_ENTRIES;
 fw_idx_size = sizeof(struct qla_ddb_index);

 for (idx = 0; idx < max_ddbs; idx = next_idx) {
  ret = qla4xxx_get_fwddb_entry(ha, idx, fw_ddb_entry, fw_ddb_dma,
           ((void*)0), &next_idx, &state,
           &conn_err, ((void*)0), &conn_id);
  if (ret == QLA_ERROR)
   break;


  if (strlen((char *)fw_ddb_entry->iscsi_name) == 0)
   goto continue_next_new_nt;

  if (!(state == DDB_DS_NO_CONNECTION_ACTIVE))
   goto continue_next_new_nt;

  DEBUG2(ql4_printk(KERN_INFO, ha,
      "Adding  DDB to session = 0x%x\n", idx));

  nt_ddb_idx = vmalloc(fw_idx_size);
  if (!nt_ddb_idx)
   break;

  nt_ddb_idx->fw_ddb_idx = idx;

  ret = qla4xxx_is_session_exists(ha, fw_ddb_entry);
  if (ret == QLA_SUCCESS) {

   vfree(nt_ddb_idx);
   goto continue_next_new_nt;
  }

  list_add_tail(&nt_ddb_idx->list, list_nt);

  ret = qla4xxx_sess_conn_setup(ha, fw_ddb_entry, RESET_ADAPTER,
           idx);
  if (ret == QLA_ERROR)
   goto exit_new_nt_list;

continue_next_new_nt:
  if (next_idx == 0)
   break;
 }

exit_new_nt_list:
 if (fw_ddb_entry)
  dma_pool_free(ha->fw_ddb_dma_pool, fw_ddb_entry, fw_ddb_dma);
}
