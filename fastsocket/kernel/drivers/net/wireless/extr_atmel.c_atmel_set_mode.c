
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct atmel_private {scalar_t__ operating_mode; } ;
typedef scalar_t__ __u32 ;


 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_mode(struct net_device *dev,
     struct iw_request_info *info,
     __u32 *uwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 if (*uwrq != IW_MODE_ADHOC && *uwrq != IW_MODE_INFRA)
  return -EINVAL;

 priv->operating_mode = *uwrq;
 return -EINPROGRESS;
}
