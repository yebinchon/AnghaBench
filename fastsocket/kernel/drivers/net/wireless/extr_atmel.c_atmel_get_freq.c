
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; int m; } ;
struct atmel_private {int channel; } ;


 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_freq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *fwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 fwrq->m = priv->channel;
 fwrq->e = 0;
 return 0;
}
