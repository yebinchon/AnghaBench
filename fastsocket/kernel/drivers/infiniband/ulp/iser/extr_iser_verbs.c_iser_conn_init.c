
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int lock; int conn_list; int refcount; int post_send_buf_count; scalar_t__ post_recv_buf_count; int wait; int state; } ;


 int INIT_LIST_HEAD (int *) ;
 int ISER_CONN_INIT ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void iser_conn_init(struct iser_conn *ib_conn)
{
 ib_conn->state = ISER_CONN_INIT;
 init_waitqueue_head(&ib_conn->wait);
 ib_conn->post_recv_buf_count = 0;
 atomic_set(&ib_conn->post_send_buf_count, 0);
 atomic_set(&ib_conn->refcount, 1);
 INIT_LIST_HEAD(&ib_conn->conn_list);
 spin_lock_init(&ib_conn->lock);
}
