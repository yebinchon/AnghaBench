
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct hostap_pci_priv {scalar_t__ mem_start; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct hostap_pci_priv* hw_priv; } ;


 struct hostap_interface* netdev_priv (struct net_device*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void hfa384x_outb(struct net_device *dev, int a, u8 v)
{
 struct hostap_interface *iface;
 struct hostap_pci_priv *hw_priv;
 iface = netdev_priv(dev);
 hw_priv = iface->local->hw_priv;
 writeb(v, hw_priv->mem_start + a);
}
