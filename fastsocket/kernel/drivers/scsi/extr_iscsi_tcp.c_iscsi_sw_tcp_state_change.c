
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; struct iscsi_conn* sk_user_data; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {void (* old_state_change ) (struct sock*) ;} ;
struct iscsi_session {int dummy; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; struct iscsi_session* session; } ;


 int iscsi_sw_sk_state_check (struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void iscsi_sw_tcp_state_change(struct sock *sk)
{
 struct iscsi_tcp_conn *tcp_conn;
 struct iscsi_sw_tcp_conn *tcp_sw_conn;
 struct iscsi_conn *conn;
 struct iscsi_session *session;
 void (*old_state_change)(struct sock *);

 read_lock(&sk->sk_callback_lock);
 conn = sk->sk_user_data;
 if (!conn) {
  read_unlock(&sk->sk_callback_lock);
  return;
 }
 session = conn->session;

 iscsi_sw_sk_state_check(sk);

 tcp_conn = conn->dd_data;
 tcp_sw_conn = tcp_conn->dd_data;
 old_state_change = tcp_sw_conn->old_state_change;

 read_unlock(&sk->sk_callback_lock);

 old_state_change(sk);
}
