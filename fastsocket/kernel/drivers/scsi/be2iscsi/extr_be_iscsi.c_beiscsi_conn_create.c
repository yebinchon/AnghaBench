
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_session {struct beiscsi_session* dd_data; } ;
struct iscsi_conn {struct beiscsi_conn* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct beiscsi_session {int dummy; } ;
struct beiscsi_hba {int dummy; } ;
struct beiscsi_conn {struct beiscsi_session* beiscsi_sess; struct iscsi_conn* conn; struct beiscsi_hba* phba; int * ep; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int ) ;
 struct iscsi_cls_conn* iscsi_conn_setup (struct iscsi_cls_session*,int,int ) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;

struct iscsi_cls_conn *
beiscsi_conn_create(struct iscsi_cls_session *cls_session, u32 cid)
{
 struct beiscsi_hba *phba;
 struct Scsi_Host *shost;
 struct iscsi_cls_conn *cls_conn;
 struct beiscsi_conn *beiscsi_conn;
 struct iscsi_conn *conn;
 struct iscsi_session *sess;
 struct beiscsi_session *beiscsi_sess;

 shost = iscsi_session_to_shost(cls_session);
 phba = iscsi_host_priv(shost);

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_conn_create ,cid"
      "from iscsi layer=%d\n", cid);

 cls_conn = iscsi_conn_setup(cls_session, sizeof(*beiscsi_conn), cid);
 if (!cls_conn)
  return ((void*)0);

 conn = cls_conn->dd_data;
 beiscsi_conn = conn->dd_data;
 beiscsi_conn->ep = ((void*)0);
 beiscsi_conn->phba = phba;
 beiscsi_conn->conn = conn;
 sess = cls_session->dd_data;
 beiscsi_sess = sess->dd_data;
 beiscsi_conn->beiscsi_sess = beiscsi_sess;
 return cls_conn;
}
