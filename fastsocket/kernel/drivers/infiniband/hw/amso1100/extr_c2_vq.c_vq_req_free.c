
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_vq_req {int refcnt; scalar_t__ reply_msg; } ;
struct c2_dev {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct c2_vq_req*) ;

void vq_req_free(struct c2_dev *c2dev, struct c2_vq_req *r)
{
 r->reply_msg = 0;
 if (atomic_dec_and_test(&r->refcnt)) {
  kfree(r);
 }
}
