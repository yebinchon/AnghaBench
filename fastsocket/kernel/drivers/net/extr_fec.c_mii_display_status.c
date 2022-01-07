
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int name; } ;
struct fec_enet_private {int phy_status; int link; int old_link; } ;






 int volatile PHY_STAT_ANC ;
 int volatile PHY_STAT_FAULT ;
 int volatile PHY_STAT_SPMASK ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;

__attribute__((used)) static void mii_display_status(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 volatile uint *s = &(fep->phy_status);

 if (!fep->link && !fep->old_link) {

  return;
 }

 printk("%s: status: ", dev->name);

 if (!fep->link) {
  printk("link down");
 } else {
  printk("link up");

  switch(*s & PHY_STAT_SPMASK) {
  case 131: printk(", 100MBit Full Duplex"); break;
  case 130: printk(", 100MBit Half Duplex"); break;
  case 129: printk(", 10MBit Full Duplex"); break;
  case 128: printk(", 10MBit Half Duplex"); break;
  default:
   printk(", Unknown speed/duplex");
  }

  if (*s & PHY_STAT_ANC)
   printk(", auto-negotiation complete");
 }

 if (*s & PHY_STAT_FAULT)
  printk(", remote fault");

 printk(".\n");
}
