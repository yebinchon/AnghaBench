
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {int dpc_flags; int host; } ;
struct qla_conn {int dummy; } ;
struct ql4_task_data {int dummy; } ;
struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_endpoint {struct iscsi_cls_conn* conn; } ;
struct iscsi_cls_session {int recovery_tmo; struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_endpoint* ep; } ;
struct dev_db_entry {int dummy; } ;
struct ddb_entry {int flags; struct iscsi_cls_conn* conn; int fw_ddb_entry; struct iscsi_cls_session* sess; } ;
struct TYPE_3__ {int owner; } ;


 int DEBUG2 (int ) ;
 int DF_RELOGIN ;
 int DPC_RELOGIN_DEVICE ;
 int INVALID_ENTRY ;
 int KERN_ERR ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int RESET_ADAPTER ;
 int iscsi_block_session (struct iscsi_cls_session*) ;
 struct iscsi_cls_conn* iscsi_conn_setup (struct iscsi_cls_session*,int,int) ;
 struct iscsi_cls_session* iscsi_session_setup (TYPE_1__*,int ,int,int,int,int ,int ) ;
 int memcpy (int *,struct dev_db_entry*,int) ;
 int module_put (int ) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int ql4xsess_recovery_tmo ;
 int qla4xxx_copy_fwddb_param (struct scsi_qla_host*,struct dev_db_entry*,struct iscsi_cls_session*,struct iscsi_cls_conn*) ;
 struct iscsi_endpoint* qla4xxx_get_ep_fwdb (struct scsi_qla_host*,struct dev_db_entry*) ;
 TYPE_1__ qla4xxx_iscsi_transport ;
 int qla4xxx_setup_flash_ddb_entry (struct scsi_qla_host*,struct ddb_entry*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qla4xxx_sess_conn_setup(struct scsi_qla_host *ha,
       struct dev_db_entry *fw_ddb_entry,
       int is_reset, uint16_t idx)
{
 struct iscsi_cls_session *cls_sess;
 struct iscsi_session *sess;
 struct iscsi_cls_conn *cls_conn;
 struct iscsi_endpoint *ep;
 uint16_t cmds_max = 32;
 uint16_t conn_id = 0;
 uint32_t initial_cmdsn = 0;
 int ret = QLA_SUCCESS;

 struct ddb_entry *ddb_entry = ((void*)0);




 cls_sess = iscsi_session_setup(&qla4xxx_iscsi_transport, ha->host,
           cmds_max, sizeof(struct ddb_entry),
           sizeof(struct ql4_task_data),
           initial_cmdsn, INVALID_ENTRY);
 if (!cls_sess) {
  ret = QLA_ERROR;
  goto exit_setup;
 }





 module_put(qla4xxx_iscsi_transport.owner);
 sess = cls_sess->dd_data;
 ddb_entry = sess->dd_data;
 ddb_entry->sess = cls_sess;

 cls_sess->recovery_tmo = ql4xsess_recovery_tmo;
 memcpy(&ddb_entry->fw_ddb_entry, fw_ddb_entry,
        sizeof(struct dev_db_entry));

 qla4xxx_setup_flash_ddb_entry(ha, ddb_entry, idx);

 cls_conn = iscsi_conn_setup(cls_sess, sizeof(struct qla_conn), conn_id);

 if (!cls_conn) {
  ret = QLA_ERROR;
  goto exit_setup;
 }

 ddb_entry->conn = cls_conn;


 ep = qla4xxx_get_ep_fwdb(ha, fw_ddb_entry);
 if (ep) {
  ep->conn = cls_conn;
  cls_conn->ep = ep;
 } else {
  DEBUG2(ql4_printk(KERN_ERR, ha, "Unable to get ep\n"));
  ret = QLA_ERROR;
  goto exit_setup;
 }


 qla4xxx_copy_fwddb_param(ha, fw_ddb_entry, cls_sess, cls_conn);

 if (is_reset == RESET_ADAPTER) {
  iscsi_block_session(cls_sess);





  set_bit(DPC_RELOGIN_DEVICE, &ha->dpc_flags);
  set_bit(DF_RELOGIN, &ddb_entry->flags);
 }

exit_setup:
 return ret;
}
