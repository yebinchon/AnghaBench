
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct budget_ci* ext_priv; } ;
struct TYPE_5__ {struct budget_ci* priv; } ;
struct TYPE_6__ {TYPE_1__ dvb_adapter; } ;
struct budget_ci {TYPE_2__ budget; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int ciintf_init (struct budget_ci*) ;
 int dprintk (int,char*,struct budget_ci*) ;
 int frontend_init (struct budget_ci*) ;
 int kfree (struct budget_ci*) ;
 struct budget_ci* kzalloc (int,int ) ;
 int msp430_ir_init (struct budget_ci*) ;
 int ttpci_budget_deinit (TYPE_2__*) ;
 int ttpci_budget_init (TYPE_2__*,struct saa7146_dev*,struct saa7146_pci_extension_data*,int ,int ) ;
 int ttpci_budget_init_hooks (TYPE_2__*) ;

__attribute__((used)) static int budget_ci_attach(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
 struct budget_ci *budget_ci;
 int err;

 budget_ci = kzalloc(sizeof(struct budget_ci), GFP_KERNEL);
 if (!budget_ci) {
  err = -ENOMEM;
  goto out1;
 }

 dprintk(2, "budget_ci: %p\n", budget_ci);

 dev->ext_priv = budget_ci;

 err = ttpci_budget_init(&budget_ci->budget, dev, info, THIS_MODULE,
    adapter_nr);
 if (err)
  goto out2;

 err = msp430_ir_init(budget_ci);
 if (err)
  goto out3;

 ciintf_init(budget_ci);

 budget_ci->budget.dvb_adapter.priv = budget_ci;
 frontend_init(budget_ci);

 ttpci_budget_init_hooks(&budget_ci->budget);

 return 0;

out3:
 ttpci_budget_deinit(&budget_ci->budget);
out2:
 kfree(budget_ci);
out1:
 return err;
}
