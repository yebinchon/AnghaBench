
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int qp_type; } ;
struct ipath_qp {size_t state; TYPE_1__ ibqp; } ;
struct ipath_ibdev {int n_pkt_drops; } ;
struct ipath_ib_header {int dummy; } ;







 int IPATH_PROCESS_RECV_OK ;
 int ib_ipath_disable_sma ;
 int* ib_ipath_state_ops ;
 int ipath_rc_rcv (struct ipath_ibdev*,struct ipath_ib_header*,int,void*,int ,struct ipath_qp*) ;
 int ipath_uc_rcv (struct ipath_ibdev*,struct ipath_ib_header*,int,void*,int ,struct ipath_qp*) ;
 int ipath_ud_rcv (struct ipath_ibdev*,struct ipath_ib_header*,int,void*,int ,struct ipath_qp*) ;

__attribute__((used)) static void ipath_qp_rcv(struct ipath_ibdev *dev,
    struct ipath_ib_header *hdr, int has_grh,
    void *data, u32 tlen, struct ipath_qp *qp)
{

 if (!(ib_ipath_state_ops[qp->state] & IPATH_PROCESS_RECV_OK)) {
  dev->n_pkt_drops++;
  return;
 }

 switch (qp->ibqp.qp_type) {
 case 130:
 case 132:
  if (ib_ipath_disable_sma)
   break;

 case 128:
  ipath_ud_rcv(dev, hdr, has_grh, data, tlen, qp);
  break;

 case 131:
  ipath_rc_rcv(dev, hdr, has_grh, data, tlen, qp);
  break;

 case 129:
  ipath_uc_rcv(dev, hdr, has_grh, data, tlen, qp);
  break;

 default:
  break;
 }
}
