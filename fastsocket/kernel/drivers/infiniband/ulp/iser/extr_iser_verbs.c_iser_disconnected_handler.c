
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {scalar_t__ post_recv_buf_count; int wait; int state; int post_send_buf_count; TYPE_1__* iser_conn; } ;
struct TYPE_2__ {int iscsi_conn; } ;


 int ISCSI_ERR_CONN_FAILED ;
 int ISER_CONN_DOWN ;
 int ISER_CONN_TERMINATING ;
 int ISER_CONN_UP ;
 scalar_t__ atomic_read (int *) ;
 int iscsi_conn_failure (int ,int ) ;
 int iser_conn_put (struct iser_conn*,int ) ;
 scalar_t__ iser_conn_state_comp_exch (struct iser_conn*,int ,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int iser_disconnected_handler(struct rdma_cm_id *cma_id)
{
 struct iser_conn *ib_conn;
 int ret;

 ib_conn = (struct iser_conn *)cma_id->context;



 if (iser_conn_state_comp_exch(ib_conn, ISER_CONN_UP,
          ISER_CONN_TERMINATING))
  iscsi_conn_failure(ib_conn->iser_conn->iscsi_conn,
       ISCSI_ERR_CONN_FAILED);


 if (ib_conn->post_recv_buf_count == 0 &&
     (atomic_read(&ib_conn->post_send_buf_count) == 0)) {
  ib_conn->state = ISER_CONN_DOWN;
  wake_up_interruptible(&ib_conn->wait);
 }

 ret = iser_conn_put(ib_conn, 0);
 return ret;
}
