
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; struct iscsi_conn* sk_user_data; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {void (* old_write_space ) (struct sock*) ;} ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;


 int ISCSI_SW_TCP_DBG (struct iscsi_conn*,char*) ;
 int iscsi_conn_queue_work (struct iscsi_conn*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_sw_tcp_write_space(struct sock *sk)
{
 struct iscsi_conn *conn;
 struct iscsi_tcp_conn *tcp_conn;
 struct iscsi_sw_tcp_conn *tcp_sw_conn;
 void (*old_write_space)(struct sock *);

 read_lock_bh(&sk->sk_callback_lock);
 conn = sk->sk_user_data;
 if (!conn) {
  read_unlock_bh(&sk->sk_callback_lock);
  return;
 }

 tcp_conn = conn->dd_data;
 tcp_sw_conn = tcp_conn->dd_data;
 old_write_space = tcp_sw_conn->old_write_space;
 read_unlock_bh(&sk->sk_callback_lock);

 old_write_space(sk);

 ISCSI_SW_TCP_DBG(conn, "iscsi_write_space\n");
 iscsi_conn_queue_work(conn);
}
