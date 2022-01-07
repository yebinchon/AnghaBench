
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct be_eq_obj {int napi; TYPE_1__ q; int adapter; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int be_eq_notify (int ,int ,int,int,int ) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t be_msix(int irq, void *dev)
{
 struct be_eq_obj *eqo = dev;

 be_eq_notify(eqo->adapter, eqo->q.id, 0, 1, 0);
 napi_schedule(&eqo->napi);
 return IRQ_HANDLED;
}
