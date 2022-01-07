
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; int flags; } ;
struct atmel_private {scalar_t__ new_SSID_size; scalar_t__ SSID_size; int connect_to_any_BSS; int SSID; int new_SSID; } ;


 int memcpy (char*,int ,scalar_t__) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_essid(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *dwrq,
      char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);


 if (priv->new_SSID_size != 0) {
  memcpy(extra, priv->new_SSID, priv->new_SSID_size);
  dwrq->length = priv->new_SSID_size;
 } else {
  memcpy(extra, priv->SSID, priv->SSID_size);
  dwrq->length = priv->SSID_size;
 }

 dwrq->flags = !priv->connect_to_any_BSS;

 return 0;
}
