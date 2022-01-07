
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct hostap_pci_priv {scalar_t__ mem_start; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct hostap_pci_priv* hw_priv; } ;


 struct hostap_interface* netdev_priv (struct net_device*) ;
 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 hfa384x_inw(struct net_device *dev, int a)
{
 struct hostap_interface *iface;
 struct hostap_pci_priv *hw_priv;
 iface = netdev_priv(dev);
 hw_priv = iface->local->hw_priv;
 return readw(hw_priv->mem_start + a);
}
