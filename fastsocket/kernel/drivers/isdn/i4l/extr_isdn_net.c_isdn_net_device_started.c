
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {struct net_device* master; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_5__ {struct net_device* dev; TYPE_1__* local; } ;
typedef TYPE_2__ isdn_net_dev ;


 int netif_running (struct net_device*) ;

__attribute__((used)) static __inline__ int isdn_net_device_started(isdn_net_dev *n)
{
 isdn_net_local *lp = n->local;
 struct net_device *dev;

 if (lp->master)
  dev = lp->master;
 else
  dev = n->dev;
 return netif_running(dev);
}
