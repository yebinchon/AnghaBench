
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {struct socket* sock; } ;
struct iscsi_session {int lock; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; struct iscsi_session* session; } ;


 int iscsi_sw_tcp_conn_restore_callbacks (struct iscsi_sw_tcp_conn*) ;
 int sock_hold (int ) ;
 int sock_put (int ) ;
 int sockfd_put (struct socket*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_sw_tcp_release_conn(struct iscsi_conn *conn)
{
 struct iscsi_session *session = conn->session;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct socket *sock = tcp_sw_conn->sock;

 if (!sock)
  return;

 sock_hold(sock->sk);
 iscsi_sw_tcp_conn_restore_callbacks(tcp_sw_conn);
 sock_put(sock->sk);

 spin_lock_bh(&session->lock);
 tcp_sw_conn->sock = ((void*)0);
 spin_unlock_bh(&session->lock);
 sockfd_put(sock);
}
