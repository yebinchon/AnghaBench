
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct gfar_private {int reset_task; } ;


 struct gfar_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void gfar_timeout(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);

 dev->stats.tx_errors++;
 schedule_work(&priv->reset_task);
}
