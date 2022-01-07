
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int flags; } ;
struct atmel_private {scalar_t__ power_mode; } ;


 int IW_POWER_ON ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_power(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *vwrq,
      char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 vwrq->disabled = priv->power_mode ? 0 : 1;
 vwrq->flags = IW_POWER_ON;
 return 0;
}
