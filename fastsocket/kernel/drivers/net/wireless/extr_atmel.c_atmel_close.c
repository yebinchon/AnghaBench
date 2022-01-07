
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sa_data; int sa_family; } ;
struct TYPE_4__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ ap_addr; TYPE_2__ data; } ;
struct net_device {int dummy; } ;
struct atmel_private {scalar_t__ station_state; scalar_t__ bus_type; int dev; } ;


 int ARPHRD_ETHER ;
 scalar_t__ BUS_TYPE_PCCARD ;
 int ETH_ALEN ;
 int GCR ;
 int SIOCGIWAP ;
 int STATION_STATE_DOWN ;
 scalar_t__ STATION_STATE_READY ;
 int atmel_enter_state (struct atmel_private*,int ) ;
 int atmel_write16 (struct net_device*,int ,int) ;
 int memset (int ,int ,int ) ;
 struct atmel_private* netdev_priv (struct net_device*) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static int atmel_close(struct net_device *dev)
{
 struct atmel_private *priv = netdev_priv(dev);


 if (priv->station_state == STATION_STATE_READY) {
  union iwreq_data wrqu;

  wrqu.data.length = 0;
  wrqu.data.flags = 0;
  wrqu.ap_addr.sa_family = ARPHRD_ETHER;
  memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
  wireless_send_event(priv->dev, SIOCGIWAP, &wrqu, ((void*)0));
 }

 atmel_enter_state(priv, STATION_STATE_DOWN);

 if (priv->bus_type == BUS_TYPE_PCCARD)
  atmel_write16(dev, GCR, 0x0060);
 atmel_write16(dev, GCR, 0x0040);
 return 0;
}
