
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* netdev; scalar_t__ master; } ;
typedef TYPE_2__ isdn_net_local ;
struct TYPE_4__ {scalar_t__ dev; } ;


 int netif_wake_queue (scalar_t__) ;

__attribute__((used)) static __inline__ void isdn_net_device_wake_queue(isdn_net_local *lp)
{
 if (lp->master)
  netif_wake_queue(lp->master);
 else
  netif_wake_queue(lp->netdev->dev);
}
