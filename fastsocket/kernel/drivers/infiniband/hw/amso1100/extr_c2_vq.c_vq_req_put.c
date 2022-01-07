
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_vq_req {scalar_t__ reply_msg; int refcnt; } ;
struct c2_dev {int dummy; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct c2_vq_req*) ;
 int vq_repbuf_free (struct c2_dev*,void*) ;

void vq_req_put(struct c2_dev *c2dev, struct c2_vq_req *r)
{
 if (atomic_dec_and_test(&r->refcnt)) {
  if (r->reply_msg != 0)
   vq_repbuf_free(c2dev,
           (void *) (unsigned long) r->reply_msg);
  kfree(r);
 }
}
