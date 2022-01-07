
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct pcmcia_device {struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int shutdown; } ;


 int DEBUG_FLOW ;
 int PDEBUG (int ,char*) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int prism2_hw_shutdown (struct net_device*,int ) ;

__attribute__((used)) static void prism2_release(u_long arg)
{
 struct pcmcia_device *link = (struct pcmcia_device *)arg;

 PDEBUG(DEBUG_FLOW, "prism2_release\n");

 if (link->priv) {
  struct net_device *dev = link->priv;
  struct hostap_interface *iface;

  iface = netdev_priv(dev);
  prism2_hw_shutdown(dev, 0);
  iface->local->shutdown = 1;
 }

 pcmcia_disable_device(link);
 PDEBUG(DEBUG_FLOW, "release - done\n");
}
