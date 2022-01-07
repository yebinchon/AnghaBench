
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_callback_lock; struct iscsi_conn* sk_user_data; } ;
struct TYPE_6__ {int segment; } ;
struct iscsi_tcp_conn {TYPE_2__ in; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct TYPE_5__ {struct iscsi_conn* data; } ;
struct TYPE_7__ {int count; TYPE_1__ arg; } ;
typedef TYPE_3__ read_descriptor_t ;


 int iscsi_sw_sk_state_check (struct sock*) ;
 int iscsi_sw_tcp_recv ;
 int iscsi_tcp_segment_unmap (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int tcp_read_sock (struct sock*,TYPE_3__*,int ) ;

__attribute__((used)) static void iscsi_sw_tcp_data_ready(struct sock *sk, int flag)
{
 struct iscsi_conn *conn;
 struct iscsi_tcp_conn *tcp_conn;
 read_descriptor_t rd_desc;

 read_lock(&sk->sk_callback_lock);
 conn = sk->sk_user_data;
 if (!conn) {
  read_unlock(&sk->sk_callback_lock);
  return;
 }
 tcp_conn = conn->dd_data;







 rd_desc.arg.data = conn;
 rd_desc.count = 1;
 tcp_read_sock(sk, &rd_desc, iscsi_sw_tcp_recv);

 iscsi_sw_sk_state_check(sk);



 iscsi_tcp_segment_unmap(&tcp_conn->in.segment);
 read_unlock(&sk->sk_callback_lock);
}
