
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct be_eq_obj {scalar_t__ spurious_intr; TYPE_1__ q; int napi; struct be_adapter* adapter; } ;
struct be_adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 int be_eq_notify (struct be_adapter*,int ,int,int,int) ;
 int events_get (struct be_eq_obj*) ;
 scalar_t__ napi_schedule_prep (int *) ;

__attribute__((used)) static irqreturn_t be_intx(int irq, void *dev)
{
 struct be_eq_obj *eqo = dev;
 struct be_adapter *adapter = eqo->adapter;
 int num_evts = 0;
 if (napi_schedule_prep(&eqo->napi)) {
  num_evts = events_get(eqo);
  __napi_schedule(&eqo->napi);
  if (num_evts)
   eqo->spurious_intr = 0;
 }
 be_eq_notify(adapter, eqo->q.id, 0, 1, num_evts);





 if (num_evts || eqo->spurious_intr++ == 0)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
