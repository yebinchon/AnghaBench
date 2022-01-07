
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct qib_qp {int s_work; int port_num; TYPE_1__ ibqp; } ;
struct qib_pportdata {int qib_wq; } ;
struct qib_ibport {int dummy; } ;


 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 scalar_t__ qib_send_ok (struct qib_qp*) ;
 int queue_work (int ,int *) ;
 struct qib_ibport* to_iport (int ,int ) ;

void qib_schedule_send(struct qib_qp *qp)
{
 if (qib_send_ok(qp)) {
  struct qib_ibport *ibp =
   to_iport(qp->ibqp.device, qp->port_num);
  struct qib_pportdata *ppd = ppd_from_ibp(ibp);

  queue_work(ppd->qib_wq, &qp->s_work);
 }
}
