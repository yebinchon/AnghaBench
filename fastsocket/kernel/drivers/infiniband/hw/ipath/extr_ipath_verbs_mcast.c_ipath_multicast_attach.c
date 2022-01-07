
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct ipath_qp {int dummy; } ;
struct ipath_mcast_qp {int dummy; } ;
struct ipath_mcast {int dummy; } ;
struct ipath_ibdev {int dummy; } ;
struct ib_qp {int device; } ;



 int EINVAL ;


 int ipath_mcast_add (struct ipath_ibdev*,struct ipath_mcast*,struct ipath_mcast_qp*) ;
 struct ipath_mcast* ipath_mcast_alloc (union ib_gid*) ;
 int ipath_mcast_free (struct ipath_mcast*) ;
 struct ipath_mcast_qp* ipath_mcast_qp_alloc (struct ipath_qp*) ;
 int ipath_mcast_qp_free (struct ipath_mcast_qp*) ;
 struct ipath_ibdev* to_idev (int ) ;
 struct ipath_qp* to_iqp (struct ib_qp*) ;

int ipath_multicast_attach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 struct ipath_qp *qp = to_iqp(ibqp);
 struct ipath_ibdev *dev = to_idev(ibqp->device);
 struct ipath_mcast *mcast;
 struct ipath_mcast_qp *mqp;
 int ret;





 mcast = ipath_mcast_alloc(gid);
 if (mcast == ((void*)0)) {
  ret = -129;
  goto bail;
 }
 mqp = ipath_mcast_qp_alloc(qp);
 if (mqp == ((void*)0)) {
  ipath_mcast_free(mcast);
  ret = -129;
  goto bail;
 }
 switch (ipath_mcast_add(dev, mcast, mqp)) {
 case 128:

  ipath_mcast_qp_free(mqp);
  ipath_mcast_free(mcast);
  ret = -EINVAL;
  goto bail;
 case 130:
  ipath_mcast_free(mcast);
  break;
 case 129:

  ipath_mcast_qp_free(mqp);
  ipath_mcast_free(mcast);
  ret = -129;
  goto bail;
 default:
  break;
 }

 ret = 0;

bail:
 return ret;
}
