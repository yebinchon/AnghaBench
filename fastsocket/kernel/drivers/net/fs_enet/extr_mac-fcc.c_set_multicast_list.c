
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;


 int IFF_PROMISC ;
 int set_multicast_finish (struct net_device*) ;
 int set_multicast_one (struct net_device*,int ) ;
 int set_multicast_start (struct net_device*) ;
 int set_promiscuous_mode (struct net_device*) ;

__attribute__((used)) static void set_multicast_list(struct net_device *dev)
{
 struct dev_mc_list *pmc;

 if ((dev->flags & IFF_PROMISC) == 0) {
  set_multicast_start(dev);
  for (pmc = dev->mc_list; pmc != ((void*)0); pmc = pmc->next)
   set_multicast_one(dev, pmc->dmi_addr);
  set_multicast_finish(dev);
 } else
  set_promiscuous_mode(dev);
}
