
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_rmem_alloc; struct iscsi_conn* sk_user_data; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int ECONNRESET ;
 int ISCSI_ERR_TCP_CONN_CLOSE ;
 scalar_t__ ISCSI_STATE_LOGGING_OUT ;
 int ISCSI_SW_TCP_DBG (struct iscsi_conn*,char*) ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_CLOSE_WAIT ;
 int atomic_read (int *) ;
 int iscsi_conn_failure (struct iscsi_conn*,int ) ;

__attribute__((used)) static inline int iscsi_sw_sk_state_check(struct sock *sk)
{
 struct iscsi_conn *conn = sk->sk_user_data;

 if ((sk->sk_state == TCP_CLOSE_WAIT || sk->sk_state == TCP_CLOSE) &&
     (conn->session->state != ISCSI_STATE_LOGGING_OUT) &&
     !atomic_read(&sk->sk_rmem_alloc)) {
  ISCSI_SW_TCP_DBG(conn, "TCP_CLOSE|TCP_CLOSE_WAIT\n");
  iscsi_conn_failure(conn, ISCSI_ERR_TCP_CONN_CLOSE);
  return -ECONNRESET;
 }
 return 0;
}
