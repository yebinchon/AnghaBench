
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int real_qp; TYPE_1__* device; } ;
struct TYPE_2__ {int (* query_qp ) (int ,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;} ;


 int ENOSYS ;
 int stub1 (int ,struct ib_qp_attr*,int,struct ib_qp_init_attr*) ;

int ib_query_qp(struct ib_qp *qp,
  struct ib_qp_attr *qp_attr,
  int qp_attr_mask,
  struct ib_qp_init_attr *qp_init_attr)
{
 return qp->device->query_qp ?
  qp->device->query_qp(qp->real_qp, qp_attr, qp_attr_mask, qp_init_attr) :
  -ENOSYS;
}
