
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_host {struct iscsi_session* session; } ;
struct iscsi_sw_tcp_conn {int sock; } ;
struct iscsi_session {int lock; struct iscsi_conn* leadconn; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;
typedef enum iscsi_host_param { ____Placeholder_iscsi_host_param } iscsi_host_param ;


 int ENOTCONN ;

 int iscsi_conn_get_addr_param (struct sockaddr_storage*,int,char*) ;
 int iscsi_host_get_param (struct Scsi_Host*,int,char*) ;
 struct iscsi_sw_tcp_host* iscsi_host_priv (struct Scsi_Host*) ;
 int kernel_getsockname (int ,struct sockaddr*,int*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
           enum iscsi_host_param param, char *buf)
{
 struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
 struct iscsi_session *session = tcp_sw_host->session;
 struct iscsi_conn *conn;
 struct iscsi_tcp_conn *tcp_conn;
 struct iscsi_sw_tcp_conn *tcp_sw_conn;
 struct sockaddr_in6 addr;
 int rc, len;

 switch (param) {
 case 128:
  spin_lock_bh(&session->lock);
  conn = session->leadconn;
  if (!conn) {
   spin_unlock_bh(&session->lock);
   return -ENOTCONN;
  }
  tcp_conn = conn->dd_data;

  tcp_sw_conn = tcp_conn->dd_data;
  if (!tcp_sw_conn->sock) {
   spin_unlock_bh(&session->lock);
   return -ENOTCONN;
  }

  rc = kernel_getsockname(tcp_sw_conn->sock,
     (struct sockaddr *)&addr, &len);
  spin_unlock_bh(&session->lock);
  if (rc)
   return rc;

  return iscsi_conn_get_addr_param((struct sockaddr_storage *)
       &addr, param, buf);
 default:
  return iscsi_host_get_param(shost, param, buf);
 }

 return 0;
}
