
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {struct net_device* priv; scalar_t__ win; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ dingo_ccr; scalar_t__ dingo; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int iounmap (scalar_t__) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void
xirc2ps_release(struct pcmcia_device *link)
{
 DEBUG(0, "release(0x%p)\n", link);

 if (link->win) {
  struct net_device *dev = link->priv;
  local_info_t *local = netdev_priv(dev);
  if (local->dingo)
   iounmap(local->dingo_ccr - 0x0800);
 }
 pcmcia_disable_device(link);
}
