
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int DDB_DS_NO_CONNECTION_ACTIVE ;
 int DDB_DS_SESSION_FAILED ;
 int DEBUG2 (int ) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MAX_DEV_DB_ENTRIES ;
 int MAX_DEV_DB_ENTRIES_40XX ;
 int QLA_ERROR ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,int) ;
 int qla4xxx_clear_ddb_entry (struct scsi_qla_host*,int) ;
 int qla4xxx_get_fwddb_entry (struct scsi_qla_host*,int,int *,int ,int *,int*,int*,int*,int *,int *) ;

void qla4xxx_free_ddb_index(struct scsi_qla_host *ha)
{
 int max_ddbs;
 int ret;
 uint32_t idx = 0, next_idx = 0;
 uint32_t state = 0, conn_err = 0;

 max_ddbs = is_qla40XX(ha) ? MAX_DEV_DB_ENTRIES_40XX :
         MAX_DEV_DB_ENTRIES;

 for (idx = 0; idx < max_ddbs; idx = next_idx) {
  ret = qla4xxx_get_fwddb_entry(ha, idx, ((void*)0), 0, ((void*)0),
           &next_idx, &state, &conn_err,
      ((void*)0), ((void*)0));
  if (ret == QLA_ERROR) {
   next_idx++;
   continue;
  }
  if (state == DDB_DS_NO_CONNECTION_ACTIVE ||
      state == DDB_DS_SESSION_FAILED) {
   DEBUG2(ql4_printk(KERN_INFO, ha,
       "Freeing DDB index = 0x%x\n", idx));
   ret = qla4xxx_clear_ddb_entry(ha, idx);
   if (ret == QLA_ERROR)
    ql4_printk(KERN_ERR, ha,
        "Unable to clear DDB index = "
        "0x%x\n", idx);
  }
  if (next_idx == 0)
   break;
 }
}
