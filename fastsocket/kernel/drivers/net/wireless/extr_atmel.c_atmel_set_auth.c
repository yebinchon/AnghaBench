
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_param {int flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct atmel_private {int exclude_unencrypted; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;



 int IW_AUTH_INDEX ;





 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_auth(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 struct iw_param *param = &wrqu->param;

 switch (param->flags & IW_AUTH_INDEX) {
 case 128:
 case 134:
 case 135:
 case 132:
 case 130:
 case 131:



  break;

 case 133:
  priv->exclude_unencrypted = param->value ? 1 : 0;
  break;

 case 136: {
   if (param->value & IW_AUTH_ALG_SHARED_KEY) {
    priv->exclude_unencrypted = 1;
   } else if (param->value & IW_AUTH_ALG_OPEN_SYSTEM) {
    priv->exclude_unencrypted = 0;
   } else
    return -EINVAL;
   break;
  }

 case 129:

  if (param->value > 0)
   return -EOPNOTSUPP;
  break;

 default:
  return -EOPNOTSUPP;
 }
 return -EINPROGRESS;
}
