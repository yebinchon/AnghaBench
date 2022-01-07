
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {scalar_t__ irq; } ;
struct net_device {int dummy; } ;
typedef int phy_interface_t ;


 int phy_attach_direct (struct net_device*,struct phy_device*,int ,int ) ;
 int phy_prepare_link (struct phy_device*,void (*) (struct net_device*)) ;
 int phy_start_interrupts (struct phy_device*) ;
 int phy_start_machine (struct phy_device*,int *) ;

int phy_connect_direct(struct net_device *dev, struct phy_device *phydev,
         void (*handler)(struct net_device *), u32 flags,
         phy_interface_t interface)
{
 int rc;

 rc = phy_attach_direct(dev, phydev, flags, interface);
 if (rc)
  return rc;

 phy_prepare_link(phydev, handler);
 phy_start_machine(phydev, ((void*)0));
 if (phydev->irq > 0)
  phy_start_interrupts(phydev);

 return 0;
}
