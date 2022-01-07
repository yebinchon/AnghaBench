
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_qp {int ibqp; } ;
struct ocrdma_dev {int ibdev; int dev_lock; struct ocrdma_qp** qp_tbl; } ;
struct ib_qp_attr {int qp_state; } ;
struct TYPE_2__ {int port_num; int * qp; } ;
struct ib_event {int * device; TYPE_1__ element; int event; } ;


 int IB_EVENT_PORT_ERR ;
 int IB_EVENT_QP_FATAL ;
 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int OCRDMA_MAX_QP ;
 int _ocrdma_modify_qp (int *,struct ib_qp_attr*,int) ;
 int ib_dispatch_event (struct ib_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ocrdma_close(struct ocrdma_dev *dev)
{
 int i;
 struct ocrdma_qp *qp, **cur_qp;
 struct ib_event err_event;
 struct ib_qp_attr attrs;
 int attr_mask = IB_QP_STATE;

 attrs.qp_state = IB_QPS_ERR;
 mutex_lock(&dev->dev_lock);
 if (dev->qp_tbl) {
  cur_qp = dev->qp_tbl;
  for (i = 0; i < OCRDMA_MAX_QP; i++) {
   qp = cur_qp[i];
   if (qp) {

    _ocrdma_modify_qp(&qp->ibqp, &attrs, attr_mask);

    err_event.event = IB_EVENT_QP_FATAL;
    err_event.element.qp = &qp->ibqp;
    err_event.device = &dev->ibdev;
    ib_dispatch_event(&err_event);
   }
  }
 }
 mutex_unlock(&dev->dev_lock);

 err_event.event = IB_EVENT_PORT_ERR;
 err_event.element.port_num = 1;
 err_event.device = &dev->ibdev;
 ib_dispatch_event(&err_event);
 return 0;
}
