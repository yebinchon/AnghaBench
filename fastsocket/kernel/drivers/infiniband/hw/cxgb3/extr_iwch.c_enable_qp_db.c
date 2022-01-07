
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int qpid; } ;
struct iwch_qp {TYPE_4__ wq; TYPE_3__* rhp; } ;
struct TYPE_5__ {int doorbell; } ;
struct TYPE_6__ {TYPE_1__ ctrl_qp; } ;
struct TYPE_7__ {TYPE_2__ rdev; } ;


 int cxio_enable_wq_db (TYPE_4__*) ;
 int ring_doorbell (int ,int ) ;

__attribute__((used)) static int enable_qp_db(int id, void *p, void *data)
{
 struct iwch_qp *qhp = p;

 if (data)
  ring_doorbell(qhp->rhp->rdev.ctrl_qp.doorbell, qhp->wq.qpid);
 cxio_enable_wq_db(&qhp->wq);
 return 0;
}
