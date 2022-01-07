
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct cx88_core {int name; } ;
struct TYPE_4__ {int disabled; } ;
struct TYPE_3__ {int timeout; int active; } ;
struct cx8802_dev {TYPE_2__ state; struct cx88_core* core; int slock; TYPE_1__ mpegq; } ;
typedef int pm_message_t ;


 int cx8802_stop_dma (struct cx8802_dev*) ;
 int cx88_shutdown (struct cx88_core*) ;
 int del_timer (int *) ;
 int dprintk (int,char*) ;
 int list_empty (int *) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct cx8802_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 scalar_t__ pci_set_power_state (struct pci_dev*,int ) ;
 int printk (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cx8802_suspend_common(struct pci_dev *pci_dev, pm_message_t state)
{
 struct cx8802_dev *dev = pci_get_drvdata(pci_dev);
 struct cx88_core *core = dev->core;


 spin_lock(&dev->slock);
 if (!list_empty(&dev->mpegq.active)) {
  dprintk( 2, "suspend\n" );
  printk("%s: suspend mpeg\n", core->name);
  cx8802_stop_dma(dev);
  del_timer(&dev->mpegq.timeout);
 }
 spin_unlock(&dev->slock);


 cx88_shutdown(dev->core);

 pci_save_state(pci_dev);
 if (0 != pci_set_power_state(pci_dev, pci_choose_state(pci_dev, state))) {
  pci_disable_device(pci_dev);
  dev->state.disabled = 1;
 }
 return 0;
}
