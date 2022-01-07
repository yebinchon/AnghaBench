
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int flags; } ;
struct arcnet_local {int setup; } ;


 int BUGMSG (int ,char*) ;
 int D_NORMAL ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int PROMISCset ;
 int SET_SUBADR (int ) ;
 int SUB_SETUP1 ;
 int _XREG ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int outb (int,int ) ;

__attribute__((used)) static void com20020_set_mc_list(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;

 if ((dev->flags & IFF_PROMISC) && (dev->flags & IFF_UP)) {
  if (!(lp->setup & PROMISCset))
   BUGMSG(D_NORMAL, "Setting promiscuous flag...\n");
  SET_SUBADR(SUB_SETUP1);
  lp->setup |= PROMISCset;
  outb(lp->setup, _XREG);
 } else

 {
  if ((lp->setup & PROMISCset))
   BUGMSG(D_NORMAL, "Resetting promiscuous flag...\n");
  SET_SUBADR(SUB_SETUP1);
  lp->setup &= ~PROMISCset;
  outb(lp->setup, _XREG);
 }
}
