
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {scalar_t__ name_string; } ;
struct iscsi_session {void* def_taskmgmt_tmo; struct ddb_entry* dd_data; } ;
struct iscsi_conn {void* persistent_port; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct dev_db_entry {scalar_t__ iscsi_name; int ip_addr; int options; int port; int def_timeout; int chap_tbl_idx; } ;
struct ddb_entry {void* chap_tbl_idx; } ;
typedef int ip_addr ;


 int DDB_IPADDR_LEN ;
 int DDB_OPT_IPV6_DEVICE ;
 int ISCSI_PARAM_INITIATOR_NAME ;
 int ISCSI_PARAM_PERSISTENT_ADDRESS ;
 int ISCSI_PARAM_PORTAL_TYPE ;
 int ISCSI_PARAM_TARGET_NAME ;
 int iscsi_set_param (struct iscsi_cls_conn*,int ,char*,int) ;
 void* le16_to_cpu (int ) ;
 int memset (char*,int ,int) ;
 int qla4xxx_copy_to_sess_conn_params (struct iscsi_conn*,struct iscsi_session*,struct dev_db_entry*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void qla4xxx_copy_fwddb_param(struct scsi_qla_host *ha,
         struct dev_db_entry *fw_ddb_entry,
         struct iscsi_cls_session *cls_sess,
         struct iscsi_cls_conn *cls_conn)
{
 int buflen = 0;
 struct iscsi_session *sess;
 struct ddb_entry *ddb_entry;
 struct iscsi_conn *conn;
 char ip_addr[DDB_IPADDR_LEN];
 uint16_t options = 0;

 sess = cls_sess->dd_data;
 ddb_entry = sess->dd_data;
 conn = cls_conn->dd_data;

 ddb_entry->chap_tbl_idx = le16_to_cpu(fw_ddb_entry->chap_tbl_idx);

 qla4xxx_copy_to_sess_conn_params(conn, sess, fw_ddb_entry);

 sess->def_taskmgmt_tmo = le16_to_cpu(fw_ddb_entry->def_timeout);
 conn->persistent_port = le16_to_cpu(fw_ddb_entry->port);

 memset(ip_addr, 0, sizeof(ip_addr));
 options = le16_to_cpu(fw_ddb_entry->options);
 if (options & DDB_OPT_IPV6_DEVICE) {
  iscsi_set_param(cls_conn, ISCSI_PARAM_PORTAL_TYPE, "ipv6", 4);

  memset(ip_addr, 0, sizeof(ip_addr));
  sprintf(ip_addr, "%pI6", fw_ddb_entry->ip_addr);
 } else {
  iscsi_set_param(cls_conn, ISCSI_PARAM_PORTAL_TYPE, "ipv4", 4);
  sprintf(ip_addr, "%pI4", fw_ddb_entry->ip_addr);
 }

 iscsi_set_param(cls_conn, ISCSI_PARAM_PERSISTENT_ADDRESS,
   (char *)ip_addr, buflen);
 iscsi_set_param(cls_conn, ISCSI_PARAM_TARGET_NAME,
   (char *)fw_ddb_entry->iscsi_name, buflen);
 iscsi_set_param(cls_conn, ISCSI_PARAM_INITIATOR_NAME,
   (char *)ha->name_string, buflen);
}
