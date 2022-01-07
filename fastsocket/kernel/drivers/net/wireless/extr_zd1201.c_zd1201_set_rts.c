
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {short value; int fixed; scalar_t__ disabled; } ;


 int EINVAL ;
 int ZD1201_RID_CNFRTSTHRESHOLD ;
 short ZD1201_RTSMAX ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_mac_reset (struct zd1201*) ;
 int zd1201_setconfig16 (struct zd1201*,int ,short) ;

__attribute__((used)) static int zd1201_set_rts(struct net_device *dev, struct iw_request_info *info,
    struct iw_param *rts, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 int err;
 short val = rts->value;

 if (rts->disabled || !rts->fixed)
  val = ZD1201_RTSMAX;
 if (val > ZD1201_RTSMAX)
  return -EINVAL;
 if (val < 0)
  return -EINVAL;

 err = zd1201_setconfig16(zd, ZD1201_RID_CNFRTSTHRESHOLD, val);
 if (err)
  return err;
 return zd1201_mac_reset(zd);
}
