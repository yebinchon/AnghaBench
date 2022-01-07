
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {TYPE_2__* sock; int sendpage; } ;
struct iscsi_conn {int datadgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int sendpage; } ;





 int iscsi_set_param (struct iscsi_cls_conn*,int,char*,int) ;
 int iscsi_tcp_set_max_r2t (struct iscsi_conn*,char*) ;
 int sock_no_sendpage ;

__attribute__((used)) static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
           enum iscsi_param param, char *buf,
           int buflen)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;

 switch(param) {
 case 129:
  iscsi_set_param(cls_conn, param, buf, buflen);
  break;
 case 130:
  iscsi_set_param(cls_conn, param, buf, buflen);
  tcp_sw_conn->sendpage = conn->datadgst_en ?
   sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
  break;
 case 128:
  return iscsi_tcp_set_max_r2t(conn, buf);
 default:
  return iscsi_set_param(cls_conn, param, buf, buflen);
 }

 return 0;
}
