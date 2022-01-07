
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_6__ {int port_num; } ;
struct qib_qp {TYPE_2__ ibqp; int s_alt_pkey_index; int s_pkey_index; TYPE_3__ alt_ah_attr; int port_num; TYPE_3__ remote_ah_attr; int s_mig_state; } ;
struct TYPE_4__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;


 int IB_EVENT_PATH_MIG ;
 int IB_MIG_MIGRATED ;
 int stub1 (struct ib_event*,int ) ;

void qib_migrate_qp(struct qib_qp *qp)
{
 struct ib_event ev;

 qp->s_mig_state = IB_MIG_MIGRATED;
 qp->remote_ah_attr = qp->alt_ah_attr;
 qp->port_num = qp->alt_ah_attr.port_num;
 qp->s_pkey_index = qp->s_alt_pkey_index;

 ev.device = qp->ibqp.device;
 ev.element.qp = &qp->ibqp;
 ev.event = IB_EVENT_PATH_MIG;
 qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
}
