
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {scalar_t__ ext_priv; } ;
struct TYPE_2__ {scalar_t__ dvb_frontend; scalar_t__ ci_present; struct saa7146_dev* dev; } ;
struct budget_ci {TYPE_1__ budget; } ;


 int SAA7146_GPIO_INPUT ;
 int ciintf_deinit (struct budget_ci*) ;
 int dvb_frontend_detach (scalar_t__) ;
 int dvb_unregister_frontend (scalar_t__) ;
 int kfree (struct budget_ci*) ;
 int msp430_ir_deinit (struct budget_ci*) ;
 int saa7146_setgpio (struct saa7146_dev*,int,int ) ;
 int ttpci_budget_deinit (TYPE_1__*) ;

__attribute__((used)) static int budget_ci_detach(struct saa7146_dev *dev)
{
 struct budget_ci *budget_ci = (struct budget_ci *) dev->ext_priv;
 struct saa7146_dev *saa = budget_ci->budget.dev;
 int err;

 if (budget_ci->budget.ci_present)
  ciintf_deinit(budget_ci);
 msp430_ir_deinit(budget_ci);
 if (budget_ci->budget.dvb_frontend) {
  dvb_unregister_frontend(budget_ci->budget.dvb_frontend);
  dvb_frontend_detach(budget_ci->budget.dvb_frontend);
 }
 err = ttpci_budget_deinit(&budget_ci->budget);


 saa7146_setgpio(saa, 2, SAA7146_GPIO_INPUT);

 kfree(budget_ci);

 return err;
}
