
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
typedef scalar_t__ u32 ;
struct sockaddr {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ iw_mode; } ;
typedef TYPE_1__ islpci_private ;


 scalar_t__ IW_MODE_INFRA ;
 int SIOCGIWAP ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int prism54_get_wap (struct net_device*,int *,struct sockaddr*,int *) ;
 int send_simple_event (TYPE_1__*,char*) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void
link_changed(struct net_device *ndev, u32 bitrate)
{
 islpci_private *priv = netdev_priv(ndev);

 if (bitrate) {
  netif_carrier_on(ndev);
  if (priv->iw_mode == IW_MODE_INFRA) {
   union iwreq_data uwrq;
   prism54_get_wap(ndev, ((void*)0), (struct sockaddr *) &uwrq,
     ((void*)0));
   wireless_send_event(ndev, SIOCGIWAP, &uwrq, ((void*)0));
  } else
   send_simple_event(netdev_priv(ndev),
       "Link established");
 } else {
  netif_carrier_off(ndev);
  send_simple_event(netdev_priv(ndev), "Link lost");
 }
}
