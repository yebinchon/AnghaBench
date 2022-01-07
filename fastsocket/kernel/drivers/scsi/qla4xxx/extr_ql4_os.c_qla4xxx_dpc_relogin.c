
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct ddb_entry {scalar_t__ ddb_type; int flags; struct scsi_qla_host* ha; } ;


 int DEBUG2 (int ) ;
 int DF_DISABLE_RELOGIN ;
 int DF_RELOGIN ;
 scalar_t__ FLASH_DDB ;
 int KERN_INFO ;
 int iscsi_is_session_online (struct iscsi_cls_session*) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4xxx_relogin_flash_ddb (struct iscsi_cls_session*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qla4xxx_dpc_relogin(struct iscsi_cls_session *cls_sess)
{
 struct iscsi_session *sess;
 struct ddb_entry *ddb_entry;
 struct scsi_qla_host *ha;

 sess = cls_sess->dd_data;
 ddb_entry = sess->dd_data;
 ha = ddb_entry->ha;

 if (!(ddb_entry->ddb_type == FLASH_DDB))
  return;

 if (test_bit(DF_DISABLE_RELOGIN, &ddb_entry->flags))
  return;

 if (test_and_clear_bit(DF_RELOGIN, &ddb_entry->flags) &&
     !iscsi_is_session_online(cls_sess)) {
  DEBUG2(ql4_printk(KERN_INFO, ha,
      "relogin issued\n"));
  qla4xxx_relogin_flash_ddb(cls_sess);
 }
}
