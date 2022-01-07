
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int open; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ netwave_private ;


 int DEBUG (int,char*) ;
 int ENODEV ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netwave_reset (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static int netwave_open(struct net_device *dev) {
    netwave_private *priv = netdev_priv(dev);
    struct pcmcia_device *link = priv->p_dev;

    DEBUG(1, "netwave_open: starting.\n");

    if (!pcmcia_dev_present(link))
 return -ENODEV;

    link->open++;

    netif_start_queue(dev);
    netwave_reset(dev);

    return 0;
}
