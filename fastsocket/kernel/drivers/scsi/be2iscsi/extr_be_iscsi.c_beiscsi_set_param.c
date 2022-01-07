
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int first_burst; int max_burst; } ;
struct iscsi_conn {int max_recv_dlength; int max_xmit_dlength; scalar_t__ dd_data; struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct beiscsi_hba {int dummy; } ;
struct beiscsi_conn {struct beiscsi_hba* phba; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;


 int BEISCSI_LOG_CONFIG ;




 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int iscsi_set_param (struct iscsi_cls_conn*,int,char*,int) ;

int beiscsi_set_param(struct iscsi_cls_conn *cls_conn,
        enum iscsi_param param, char *buf, int buflen)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct beiscsi_hba *phba = ((void*)0);
 int ret;

 phba = ((struct beiscsi_conn *)conn->dd_data)->phba;
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_conn_set_param,"
      " param= %d\n", param);

 ret = iscsi_set_param(cls_conn, param, buf, buflen);
 if (ret)
  return ret;




 switch (param) {
 case 131:
  if (session->first_burst > 8192)
   session->first_burst = 8192;
  break;
 case 129:
  if (conn->max_recv_dlength > 65536)
   conn->max_recv_dlength = 65536;
  break;
 case 130:
  if (session->max_burst > 262144)
   session->max_burst = 262144;
  break;
 case 128:
  if ((conn->max_xmit_dlength > 65536) ||
      (conn->max_xmit_dlength == 0))
   conn->max_xmit_dlength = 65536;
 default:
  return 0;
 }

 return 0;
}
