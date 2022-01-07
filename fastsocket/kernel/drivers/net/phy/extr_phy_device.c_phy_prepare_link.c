
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {void (* adjust_link ) (struct net_device*) ;} ;



void phy_prepare_link(struct phy_device *phydev,
  void (*handler)(struct net_device *))
{
 phydev->adjust_link = handler;
}
