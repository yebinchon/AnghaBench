
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct qib_qp {scalar_t__ state; int port_num; } ;
struct qib_mcast_qp {int dummy; } ;
struct qib_mcast {int dummy; } ;
struct qib_ibport {int dummy; } ;
struct qib_ibdev {int dummy; } ;
struct ib_qp {int qp_num; int device; } ;



 int EINVAL ;


 scalar_t__ IB_QPS_RESET ;
 int qib_mcast_add (struct qib_ibdev*,struct qib_ibport*,struct qib_mcast*,struct qib_mcast_qp*) ;
 struct qib_mcast* qib_mcast_alloc (union ib_gid*) ;
 int qib_mcast_free (struct qib_mcast*) ;
 struct qib_mcast_qp* qib_mcast_qp_alloc (struct qib_qp*) ;
 int qib_mcast_qp_free (struct qib_mcast_qp*) ;
 struct qib_ibdev* to_idev (int ) ;
 struct qib_ibport* to_iport (int ,int ) ;
 struct qib_qp* to_iqp (struct ib_qp*) ;

int qib_multicast_attach(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
 struct qib_qp *qp = to_iqp(ibqp);
 struct qib_ibdev *dev = to_idev(ibqp->device);
 struct qib_ibport *ibp;
 struct qib_mcast *mcast;
 struct qib_mcast_qp *mqp;
 int ret;

 if (ibqp->qp_num <= 1 || qp->state == IB_QPS_RESET) {
  ret = -EINVAL;
  goto bail;
 }





 mcast = qib_mcast_alloc(gid);
 if (mcast == ((void*)0)) {
  ret = -129;
  goto bail;
 }
 mqp = qib_mcast_qp_alloc(qp);
 if (mqp == ((void*)0)) {
  qib_mcast_free(mcast);
  ret = -129;
  goto bail;
 }
 ibp = to_iport(ibqp->device, qp->port_num);
 switch (qib_mcast_add(dev, ibp, mcast, mqp)) {
 case 128:

  qib_mcast_qp_free(mqp);
  qib_mcast_free(mcast);
  break;

 case 130:
  qib_mcast_free(mcast);
  break;

 case 129:

  qib_mcast_qp_free(mqp);
  qib_mcast_free(mcast);
  ret = -129;
  goto bail;

 default:
  break;
 }

 ret = 0;

bail:
 return ret;
}
