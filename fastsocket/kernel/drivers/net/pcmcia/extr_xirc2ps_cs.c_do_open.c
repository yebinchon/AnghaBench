
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int open; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct net_device*) ;
 int ENODEV ;
 int do_reset (struct net_device*,int) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static int
do_open(struct net_device *dev)
{
    local_info_t *lp = netdev_priv(dev);
    struct pcmcia_device *link = lp->p_dev;

    DEBUG(0, "do_open(%p)\n", dev);



    if (!pcmcia_dev_present(link))
 return -ENODEV;


    link->open++;

    netif_start_queue(dev);
    do_reset(dev,1);

    return 0;
}
