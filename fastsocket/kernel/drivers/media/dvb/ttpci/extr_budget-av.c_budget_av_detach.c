
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_dev {scalar_t__ ext_priv; } ;
struct TYPE_2__ {int * dvb_frontend; scalar_t__ ci_present; } ;
struct budget_av {int has_saa7113; TYPE_1__ budget; int vd; } ;


 int SAA7146_GPIO_OUTLO ;
 int ciintf_deinit (struct budget_av*) ;
 int dprintk (int,char*,struct saa7146_dev*) ;
 int dvb_frontend_detach (int *) ;
 int dvb_unregister_frontend (int *) ;
 int kfree (struct budget_av*) ;
 int msleep (int) ;
 int saa7146_setgpio (struct saa7146_dev*,int ,int ) ;
 int saa7146_unregister_device (int *,struct saa7146_dev*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;
 int ttpci_budget_deinit (TYPE_1__*) ;

__attribute__((used)) static int budget_av_detach(struct saa7146_dev *dev)
{
 struct budget_av *budget_av = (struct budget_av *) dev->ext_priv;
 int err;

 dprintk(2, "dev: %p\n", dev);

 if (1 == budget_av->has_saa7113) {
  saa7146_setgpio(dev, 0, SAA7146_GPIO_OUTLO);

  msleep(200);

  saa7146_unregister_device(&budget_av->vd, dev);

  saa7146_vv_release(dev);
 }

 if (budget_av->budget.ci_present)
  ciintf_deinit(budget_av);

 if (budget_av->budget.dvb_frontend != ((void*)0)) {
  dvb_unregister_frontend(budget_av->budget.dvb_frontend);
  dvb_frontend_detach(budget_av->budget.dvb_frontend);
 }
 err = ttpci_budget_deinit(&budget_av->budget);

 kfree(budget_av);

 return err;
}
