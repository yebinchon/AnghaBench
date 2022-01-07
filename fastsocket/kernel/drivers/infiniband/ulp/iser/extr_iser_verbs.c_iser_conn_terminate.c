
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {scalar_t__ state; int wait; int cma_id; } ;


 scalar_t__ ISER_CONN_DOWN ;
 int ISER_CONN_TERMINATING ;
 int ISER_CONN_UP ;
 int iser_conn_put (struct iser_conn*,int) ;
 int iser_conn_state_comp_exch (struct iser_conn*,int ,int ) ;
 int iser_err (char*,struct iser_conn*,int) ;
 int rdma_disconnect (int ) ;
 int wait_event_interruptible (int ,int) ;

void iser_conn_terminate(struct iser_conn *ib_conn)
{
 int err = 0;






 iser_conn_state_comp_exch(ib_conn, ISER_CONN_UP, ISER_CONN_TERMINATING);
 err = rdma_disconnect(ib_conn->cma_id);
 if (err)
  iser_err("Failed to disconnect, conn: 0x%p err %d\n",
    ib_conn,err);

 wait_event_interruptible(ib_conn->wait,
     ib_conn->state == ISER_CONN_DOWN);

 iser_conn_put(ib_conn, 1);
}
