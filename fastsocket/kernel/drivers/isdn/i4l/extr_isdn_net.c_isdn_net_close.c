
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct concap_proto {TYPE_2__* pops; } ;
struct TYPE_6__ {TYPE_1__* netdev; } ;
typedef TYPE_3__ isdn_net_local ;
struct TYPE_5__ {int (* close ) (struct concap_proto*) ;} ;
struct TYPE_4__ {struct concap_proto* cprot; } ;


 struct net_device* MASTER_TO_SLAVE (struct net_device*) ;
 int isdn_net_hangup (struct net_device*) ;
 int isdn_unlock_drivers () ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int stub1 (struct concap_proto*) ;
 int stub2 (struct concap_proto*) ;

__attribute__((used)) static int
isdn_net_close(struct net_device *dev)
{
 struct net_device *p;
 netif_stop_queue(dev);
 p = MASTER_TO_SLAVE(dev);
 if (p) {

  while (p) {






   isdn_net_hangup(p);
   p = MASTER_TO_SLAVE(p);
  }
 }
 isdn_net_hangup(dev);
 isdn_unlock_drivers();
 return 0;
}
