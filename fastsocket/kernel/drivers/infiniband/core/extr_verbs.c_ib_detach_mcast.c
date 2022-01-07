
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ib_gid {int* raw; } ;
typedef int u16 ;
struct ib_qp {scalar_t__ qp_type; int usecnt; TYPE_1__* device; } ;
struct TYPE_2__ {int (* detach_mcast ) (struct ib_qp*,union ib_gid*,int ) ;} ;


 int EINVAL ;
 int ENOSYS ;
 scalar_t__ IB_QPT_UD ;
 int atomic_dec (int *) ;
 int stub1 (struct ib_qp*,union ib_gid*,int ) ;

int ib_detach_mcast(struct ib_qp *qp, union ib_gid *gid, u16 lid)
{
 int ret;

 if (!qp->device->detach_mcast)
  return -ENOSYS;
 if (gid->raw[0] != 0xff || qp->qp_type != IB_QPT_UD)
  return -EINVAL;

 ret = qp->device->detach_mcast(qp, gid, lid);
 if (!ret)
  atomic_dec(&qp->usecnt);
 return ret;
}
