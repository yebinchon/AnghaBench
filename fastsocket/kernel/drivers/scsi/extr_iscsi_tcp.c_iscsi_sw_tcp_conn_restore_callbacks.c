
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; scalar_t__ sk_no_check; int sk_write_space; int sk_state_change; int sk_data_ready; int * sk_user_data; } ;
struct iscsi_sw_tcp_conn {int old_write_space; int old_state_change; int old_data_ready; TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void
iscsi_sw_tcp_conn_restore_callbacks(struct iscsi_sw_tcp_conn *tcp_sw_conn)
{
 struct sock *sk = tcp_sw_conn->sock->sk;


 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_user_data = ((void*)0);
 sk->sk_data_ready = tcp_sw_conn->old_data_ready;
 sk->sk_state_change = tcp_sw_conn->old_state_change;
 sk->sk_write_space = tcp_sw_conn->old_write_space;
 sk->sk_no_check = 0;
 write_unlock_bh(&sk->sk_callback_lock);
}
