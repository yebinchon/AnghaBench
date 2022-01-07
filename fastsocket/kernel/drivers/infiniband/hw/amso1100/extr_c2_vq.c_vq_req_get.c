
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_vq_req {int refcnt; } ;
struct c2_dev {int dummy; } ;


 int atomic_inc (int *) ;

void vq_req_get(struct c2_dev *c2dev, struct c2_vq_req *r)
{
 atomic_inc(&r->refcnt);
}
