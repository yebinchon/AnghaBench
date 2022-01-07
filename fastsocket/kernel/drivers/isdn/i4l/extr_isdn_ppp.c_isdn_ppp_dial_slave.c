
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int flags; struct net_device* slave; } ;
typedef TYPE_1__ isdn_net_local ;
struct TYPE_6__ {TYPE_1__* local; } ;
typedef TYPE_2__ isdn_net_dev ;


 int ISDN_NET_CONNECTED ;
 int isdn_net_dial_req (TYPE_1__*) ;
 TYPE_2__* isdn_net_findif (char*) ;
 scalar_t__ netdev_priv (struct net_device*) ;

int
isdn_ppp_dial_slave(char *name)
{
 return -1;

}
