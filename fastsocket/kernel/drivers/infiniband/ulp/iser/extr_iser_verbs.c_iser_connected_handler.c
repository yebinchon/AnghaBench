
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {int wait; int state; } ;


 int ISER_CONN_UP ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void iser_connected_handler(struct rdma_cm_id *cma_id)
{
 struct iser_conn *ib_conn;

 ib_conn = (struct iser_conn *)cma_id->context;
 ib_conn->state = ISER_CONN_UP;
 wake_up_interruptible(&ib_conn->wait);
}
