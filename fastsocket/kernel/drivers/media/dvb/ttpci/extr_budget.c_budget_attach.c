
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct budget* ext_priv; } ;
struct TYPE_2__ {struct budget* priv; } ;
struct budget {TYPE_1__ dvb_adapter; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int dprintk (int,char*,struct saa7146_dev*,struct saa7146_pci_extension_data*,struct budget*) ;
 int frontend_init (struct budget*) ;
 int kfree (struct budget*) ;
 struct budget* kmalloc (int,int ) ;
 int printk (char*) ;
 int ttpci_budget_init (struct budget*,struct saa7146_dev*,struct saa7146_pci_extension_data*,int ,int ) ;
 int ttpci_budget_init_hooks (struct budget*) ;

__attribute__((used)) static int budget_attach (struct saa7146_dev* dev, struct saa7146_pci_extension_data *info)
{
 struct budget *budget = ((void*)0);
 int err;

 budget = kmalloc(sizeof(struct budget), GFP_KERNEL);
 if( ((void*)0) == budget ) {
  return -ENOMEM;
 }

 dprintk(2, "dev:%p, info:%p, budget:%p\n", dev, info, budget);

 dev->ext_priv = budget;

 err = ttpci_budget_init(budget, dev, info, THIS_MODULE, adapter_nr);
 if (err) {
  printk("==> failed\n");
  kfree (budget);
  return err;
 }

 budget->dvb_adapter.priv = budget;
 frontend_init(budget);

 ttpci_budget_init_hooks(budget);

 return 0;
}
