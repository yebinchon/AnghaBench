
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp_attr {int dummy; } ;
struct ib_qp {int real_qp; TYPE_1__* device; } ;
struct TYPE_2__ {int (* modify_qp ) (int ,struct ib_qp_attr*,int,int *) ;} ;


 int stub1 (int ,struct ib_qp_attr*,int,int *) ;

int ib_modify_qp(struct ib_qp *qp,
   struct ib_qp_attr *qp_attr,
   int qp_attr_mask)
{
 return qp->device->modify_qp(qp->real_qp, qp_attr, qp_attr_mask, ((void*)0));
}
