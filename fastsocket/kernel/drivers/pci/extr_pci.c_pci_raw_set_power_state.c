
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int current_state; TYPE_1__* bus; int dev; scalar_t__ pm_cap; int d2_support; int d1_support; } ;
typedef int pci_power_t ;
struct TYPE_2__ {scalar_t__ self; } ;


 int EINVAL ;
 int EIO ;





 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_NO_SOFT_RESET ;
 int PCI_PM_CTRL_STATE_MASK ;
 int PCI_PM_D2_DELAY ;

 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,int) ;
 int msleep (int ) ;
 int pci_pm_d3_delay ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_restore_bars (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 int pcie_aspm_pm_state_change (scalar_t__) ;
 scalar_t__ printk_ratelimit () ;
 int udelay (int ) ;

__attribute__((used)) static int pci_raw_set_power_state(struct pci_dev *dev, pci_power_t state)
{
 u16 pmcsr;
 bool need_restore = 0;


 if (dev->current_state == state)
  return 0;

 if (!dev->pm_cap)
  return -EIO;

 if (state < 133 || state > 129)
  return -EINVAL;





 if (state != 133 && dev->current_state <= 130
     && dev->current_state > state) {
  dev_err(&dev->dev, "invalid power transition "
   "(from state %d to %d)\n", dev->current_state, state);
  return -EINVAL;
 }


 if ((state == 132 && !dev->d1_support)
    || (state == 131 && !dev->d2_support))
  return -EIO;

 pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);





 switch (dev->current_state) {
 case 133:
 case 132:
 case 131:
  pmcsr &= ~PCI_PM_CTRL_STATE_MASK;
  pmcsr |= state;
  break;
 case 129:
 case 130:
 case 128:
  if ((pmcsr & PCI_PM_CTRL_STATE_MASK) == 129
   && !(pmcsr & PCI_PM_CTRL_NO_SOFT_RESET))
   need_restore = 1;

 default:
  pmcsr = 0;
  break;
 }


 pci_write_config_word(dev, dev->pm_cap + PCI_PM_CTRL, pmcsr);



 if (state == 129 || dev->current_state == 129)
  msleep(pci_pm_d3_delay);
 else if (state == 131 || dev->current_state == 131)
  udelay(PCI_PM_D2_DELAY);

 pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
 dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
 if (dev->current_state != state && printk_ratelimit())
  dev_info(&dev->dev, "Refused to change power state, "
   "currently in D%d\n", dev->current_state);
 if (need_restore)
  pci_restore_bars(dev);

 if (dev->bus->self)
  pcie_aspm_pm_state_change(dev->bus->self);

 return 0;
}
