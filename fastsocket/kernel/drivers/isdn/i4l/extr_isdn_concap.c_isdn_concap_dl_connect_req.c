
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct concap_proto {struct net_device* net_dev; } ;
typedef int isdn_net_local ;


 int IX25DEBUG (char*,...) ;
 int isdn_net_dial_req (int *) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int isdn_concap_dl_connect_req(struct concap_proto *concap)
{
 struct net_device *ndev = concap -> net_dev;
 isdn_net_local *lp = (isdn_net_local *) netdev_priv(ndev);
 int ret;
 IX25DEBUG( "isdn_concap_dl_connect_req: %s \n", ndev -> name);


 ret = isdn_net_dial_req( lp );
 if ( ret ) IX25DEBUG("dialing failed\n");
 return ret;
}
