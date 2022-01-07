
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_qp {int qpn; } ;
struct ib_qp {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_3__ {struct ib_qp* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
typedef enum mlx4_event { ____Placeholder_mlx4_event } mlx4_event ;
struct TYPE_4__ {int alt_port; int port; struct ib_qp ibqp; } ;


 int IB_EVENT_COMM_EST ;
 int IB_EVENT_PATH_MIG ;
 int IB_EVENT_PATH_MIG_ERR ;
 int IB_EVENT_QP_ACCESS_ERR ;
 int IB_EVENT_QP_FATAL ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 int IB_EVENT_QP_REQ_ERR ;
 int IB_EVENT_SQ_DRAINED ;
 int pr_warn (char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;
 TYPE_2__* to_mibqp (struct mlx4_qp*) ;

__attribute__((used)) static void mlx4_ib_qp_event(struct mlx4_qp *qp, enum mlx4_event type)
{
 struct ib_event event;
 struct ib_qp *ibqp = &to_mibqp(qp)->ibqp;

 if (type == 134)
  to_mibqp(qp)->port = to_mibqp(qp)->alt_port;

 if (ibqp->event_handler) {
  event.device = ibqp->device;
  event.element.qp = ibqp;
  switch (type) {
  case 134:
   event.event = IB_EVENT_PATH_MIG;
   break;
  case 135:
   event.event = IB_EVENT_COMM_EST;
   break;
  case 132:
   event.event = IB_EVENT_SQ_DRAINED;
   break;
  case 131:
   event.event = IB_EVENT_QP_LAST_WQE_REACHED;
   break;
  case 129:
   event.event = IB_EVENT_QP_FATAL;
   break;
  case 133:
   event.event = IB_EVENT_PATH_MIG_ERR;
   break;
  case 128:
   event.event = IB_EVENT_QP_REQ_ERR;
   break;
  case 130:
   event.event = IB_EVENT_QP_ACCESS_ERR;
   break;
  default:
   pr_warn("Unexpected event type %d "
          "on QP %06x\n", type, qp->qpn);
   return;
  }

  ibqp->event_handler(&event, ibqp->qp_context);
 }
}
