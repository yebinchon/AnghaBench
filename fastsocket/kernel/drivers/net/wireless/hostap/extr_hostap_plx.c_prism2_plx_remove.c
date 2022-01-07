
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {scalar_t__ irq; } ;
struct hostap_plx_priv {scalar_t__ attr_mem; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct hostap_plx_priv* hw_priv; } ;


 int free_irq (scalar_t__,struct net_device*) ;
 int hfa384x_disable_interrupts (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct hostap_plx_priv*) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int prism2_free_local_data (struct net_device*) ;
 int prism2_plx_cor_sreset (TYPE_1__*) ;

__attribute__((used)) static void prism2_plx_remove(struct pci_dev *pdev)
{
 struct net_device *dev;
 struct hostap_interface *iface;
 struct hostap_plx_priv *hw_priv;

 dev = pci_get_drvdata(pdev);
 iface = netdev_priv(dev);
 hw_priv = iface->local->hw_priv;


 prism2_plx_cor_sreset(iface->local);
 hfa384x_disable_interrupts(dev);

 if (hw_priv->attr_mem)
  iounmap(hw_priv->attr_mem);
 if (dev->irq)
  free_irq(dev->irq, dev);

 prism2_free_local_data(dev);
 kfree(hw_priv);
 pci_disable_device(pdev);
}
