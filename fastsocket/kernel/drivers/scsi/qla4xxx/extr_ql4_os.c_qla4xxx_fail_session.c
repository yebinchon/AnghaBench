
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {struct ddb_entry* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct ddb_entry {scalar_t__ ddb_type; int sess; int fw_ddb_device_state; } ;


 int DDB_DS_SESSION_FAILED ;
 scalar_t__ FLASH_DDB ;
 int ISCSI_ERR_CONN_FAILED ;
 int iscsi_block_session (int ) ;
 int iscsi_session_failure (struct iscsi_session*,int ) ;

__attribute__((used)) static void qla4xxx_fail_session(struct iscsi_cls_session *cls_session)
{
 struct iscsi_session *sess;
 struct ddb_entry *ddb_entry;

 sess = cls_session->dd_data;
 ddb_entry = sess->dd_data;
 ddb_entry->fw_ddb_device_state = DDB_DS_SESSION_FAILED;

 if (ddb_entry->ddb_type == FLASH_DDB)
  iscsi_block_session(ddb_entry->sess);
 else
  iscsi_session_failure(cls_session->dd_data,
          ISCSI_ERR_CONN_FAILED);
}
