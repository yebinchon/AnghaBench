
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nes_qp {int ibqp; } ;
struct disconn_work {int work; struct nes_qp* nesqp; } ;
struct TYPE_2__ {int disconn_wq; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 TYPE_1__* g_cm_core ;
 struct disconn_work* kzalloc (int,int ) ;
 int nes_add_ref (int *) ;
 int nes_disconnect_worker ;
 int queue_work (int ,int *) ;

int nes_cm_disconn(struct nes_qp *nesqp)
{
 struct disconn_work *work;

 work = kzalloc(sizeof *work, GFP_ATOMIC);
 if (!work)
  return -ENOMEM;

 nes_add_ref(&nesqp->ibqp);
 work->nesqp = nesqp;
 INIT_WORK(&work->work, nes_disconnect_worker);
 queue_work(g_cm_core->disconn_wq, &work->work);
 return 0;
}
