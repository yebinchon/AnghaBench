
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int ap; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {short value; int fixed; } ;


 int EOPNOTSUPP ;
 int ZD1201_RID_CNFMAXASSOCSTATIONS ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_getconfig16 (struct zd1201*,int ,short*) ;

__attribute__((used)) static int zd1201_get_maxassoc(struct net_device *dev,
    struct iw_request_info *info, struct iw_param *rrq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short maxassoc;
 int err;

 if (!zd->ap)
  return -EOPNOTSUPP;

 err = zd1201_getconfig16(zd, ZD1201_RID_CNFMAXASSOCSTATIONS, &maxassoc);
 if (err)
  return err;
 rrq->value = maxassoc;
 rrq->fixed = 1;

 return 0;
}
