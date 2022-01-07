
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int features; } ;
struct pci_dev {int dummy; } ;


 int RTL_FEATURE_MSI ;
 int pci_disable_msi (struct pci_dev*) ;

__attribute__((used)) static void rtl_disable_msi(struct pci_dev *pdev, struct rtl8169_private *tp)
{
 if (tp->features & RTL_FEATURE_MSI) {
  pci_disable_msi(pdev);
  tp->features &= ~RTL_FEATURE_MSI;
 }
}
