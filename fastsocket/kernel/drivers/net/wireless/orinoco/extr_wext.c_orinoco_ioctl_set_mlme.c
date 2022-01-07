
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct orinoco_private {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int sa_data; } ;
struct iw_mlme {int cmd; int reason_code; TYPE_1__ addr; } ;


 int EBUSY ;
 int EOPNOTSUPP ;


 struct orinoco_private* ndev_priv (struct net_device*) ;
 int orinoco_hw_disassociate (struct orinoco_private*,int ,int ) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_set_mlme(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 struct iw_mlme *mlme = (struct iw_mlme *)extra;
 unsigned long flags;
 int ret = 0;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 switch (mlme->cmd) {
 case 129:

  break;

 case 128:

  ret = orinoco_hw_disassociate(priv, mlme->addr.sa_data,
           mlme->reason_code);
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 orinoco_unlock(priv, &flags);
 return ret;
}
