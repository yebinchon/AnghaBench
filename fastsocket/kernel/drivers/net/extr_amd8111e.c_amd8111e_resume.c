
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ipg_timer; } ;
struct amd8111e_priv {int options; int lock; TYPE_1__ ipg_data; } ;


 scalar_t__ IPG_CONVERGE_JIFFIES ;
 int OPTION_DYN_IPG_ENABLE ;
 int PCI_D0 ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 int amd8111e_restart (struct net_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_resume(struct pci_dev *pci_dev)
{
 struct net_device *dev = pci_get_drvdata(pci_dev);
 struct amd8111e_priv *lp = netdev_priv(dev);

 if (!netif_running(dev))
  return 0;

 pci_set_power_state(pci_dev, PCI_D0);
 pci_restore_state(pci_dev);

 pci_enable_wake(pci_dev, PCI_D3hot, 0);
 pci_enable_wake(pci_dev, PCI_D3cold, 0);

 netif_device_attach(dev);

 spin_lock_irq(&lp->lock);
 amd8111e_restart(dev);

 if(lp->options & OPTION_DYN_IPG_ENABLE)
  mod_timer(&lp->ipg_data.ipg_timer,
    jiffies + IPG_CONVERGE_JIFFIES);
 spin_unlock_irq(&lp->lock);

 return 0;
}
