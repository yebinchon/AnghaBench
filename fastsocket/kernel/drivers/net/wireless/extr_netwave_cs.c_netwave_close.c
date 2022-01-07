
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
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int netwave_close(struct net_device *dev) {
    netwave_private *priv = netdev_priv(dev);
    struct pcmcia_device *link = priv->p_dev;

    DEBUG(1, "netwave_close: finishing.\n");

    link->open--;
    netif_stop_queue(dev);

    return 0;
}
