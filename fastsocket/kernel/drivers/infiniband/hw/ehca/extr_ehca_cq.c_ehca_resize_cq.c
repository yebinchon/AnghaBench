
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;


 int EFAULT ;
 int ehca_err (int ,char*) ;

int ehca_resize_cq(struct ib_cq *cq, int cqe, struct ib_udata *udata)
{

 ehca_err(cq->device, "not implemented yet");

 return -EFAULT;
}
