
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int WL3501_RESUME ;
 int netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int wl3501_pwr_mgmt (int ,int ) ;
 int wl3501_reset (struct net_device*) ;

__attribute__((used)) static int wl3501_resume(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;

 wl3501_pwr_mgmt(netdev_priv(dev), WL3501_RESUME);
 if (link->open) {
  wl3501_reset(dev);
  netif_device_attach(dev);
 }

 return 0;
}
