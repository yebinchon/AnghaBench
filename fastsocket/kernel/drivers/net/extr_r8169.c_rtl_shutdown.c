
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct net_device {int perm_addr; } ;


 int PCI_D3hot ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int WAKE_ANY ;
 int __rtl8169_get_wol (struct rtl8169_private*) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int rtl8169_hw_reset (struct rtl8169_private*) ;
 int rtl8169_net_suspend (struct net_device*) ;
 int rtl_rar_set (struct rtl8169_private*,int ) ;
 int rtl_wol_shutdown_quirk (struct rtl8169_private*) ;
 int rtl_wol_suspend_quirk (struct rtl8169_private*) ;
 scalar_t__ system_state ;

__attribute__((used)) static void rtl_shutdown(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct rtl8169_private *tp = netdev_priv(dev);
 struct device *d = &pdev->dev;

 pm_runtime_get_sync(d);

 rtl8169_net_suspend(dev);


 rtl_rar_set(tp, dev->perm_addr);

 rtl8169_hw_reset(tp);

 if (system_state == SYSTEM_POWER_OFF) {
  if (__rtl8169_get_wol(tp) & WAKE_ANY) {
   rtl_wol_suspend_quirk(tp);
   rtl_wol_shutdown_quirk(tp);
  }

  pci_wake_from_d3(pdev, 1);
  pci_set_power_state(pdev, PCI_D3hot);
 }

 pm_runtime_put_noidle(d);
}
