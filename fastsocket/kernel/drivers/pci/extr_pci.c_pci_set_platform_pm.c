
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_platform_pm_ops {int can_wakeup; int sleep_wake; int choose_state; int set_state; int is_manageable; } ;


 int EINVAL ;
 struct pci_platform_pm_ops* pci_platform_pm ;

int pci_set_platform_pm(struct pci_platform_pm_ops *ops)
{
 if (!ops->is_manageable || !ops->set_state || !ops->choose_state
     || !ops->sleep_wake || !ops->can_wakeup)
  return -EINVAL;
 pci_platform_pm = ops;
 return 0;
}
