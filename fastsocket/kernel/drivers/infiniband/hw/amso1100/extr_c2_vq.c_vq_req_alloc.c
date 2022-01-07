
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_vq_req {int reply_ready; int refcnt; int * qp; int * cm_id; scalar_t__ event; scalar_t__ reply_msg; int wait_object; } ;
struct c2_dev {int dummy; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct c2_vq_req* kmalloc (int,int ) ;

struct c2_vq_req *vq_req_alloc(struct c2_dev *c2dev)
{
 struct c2_vq_req *r;

 r = kmalloc(sizeof(struct c2_vq_req), GFP_KERNEL);
 if (r) {
  init_waitqueue_head(&r->wait_object);
  r->reply_msg = 0;
  r->event = 0;
  r->cm_id = ((void*)0);
  r->qp = ((void*)0);
  atomic_set(&r->refcnt, 1);
  atomic_set(&r->reply_ready, 0);
 }
 return r;
}
