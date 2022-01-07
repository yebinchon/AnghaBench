
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {short m; scalar_t__ e; } ;


 int ZD1201_RID_CNFOWNCHANNEL ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_getconfig16 (struct zd1201*,int ,short*) ;

__attribute__((used)) static int zd1201_get_freq(struct net_device *dev,
    struct iw_request_info *info, struct iw_freq *freq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short channel;
 int err;

 err = zd1201_getconfig16(zd, ZD1201_RID_CNFOWNCHANNEL, &channel);
 if (err)
  return err;
 freq->e = 0;
 freq->m = channel;

 return 0;
}
