
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ win; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int ramBase; } ;
typedef TYPE_1__ netwave_private ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int iounmap (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void netwave_release(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;
 netwave_private *priv = netdev_priv(dev);

 DEBUG(0, "netwave_release(0x%p)\n", link);

 pcmcia_disable_device(link);
 if (link->win)
  iounmap(priv->ramBase);
}
