
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct atmel_private {int operating_mode; } ;
typedef int __u32 ;


 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_mode(struct net_device *dev,
     struct iw_request_info *info,
     __u32 *uwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 *uwrq = priv->operating_mode;
 return 0;
}
