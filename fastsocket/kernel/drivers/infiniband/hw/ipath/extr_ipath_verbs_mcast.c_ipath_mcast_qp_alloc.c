
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_qp {int refcount; } ;
struct ipath_mcast_qp {struct ipath_qp* qp; } ;


 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 struct ipath_mcast_qp* kmalloc (int,int ) ;

__attribute__((used)) static struct ipath_mcast_qp *ipath_mcast_qp_alloc(struct ipath_qp *qp)
{
 struct ipath_mcast_qp *mqp;

 mqp = kmalloc(sizeof *mqp, GFP_KERNEL);
 if (!mqp)
  goto bail;

 mqp->qp = qp;
 atomic_inc(&qp->refcount);

bail:
 return mqp;
}
