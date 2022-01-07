
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_private {int base; } ;
struct pcmcia_device {struct net_device* priv; scalar_t__ win; } ;
struct net_device {int dummy; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int iounmap (int ) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void smc91c92_release(struct pcmcia_device *link)
{
 DEBUG(0, "smc91c92_release(0x%p)\n", link);
 if (link->win) {
  struct net_device *dev = link->priv;
  struct smc_private *smc = netdev_priv(dev);
  iounmap(smc->base);
 }
 pcmcia_disable_device(link);
}
