
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int essidlen; int essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;


 int EINVAL ;
 int IW_ESSID_MAX_SIZE ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_join (struct zd1201*,int ,int) ;

__attribute__((used)) static int zd1201_set_essid(struct net_device *dev,
    struct iw_request_info *info, struct iw_point *data, char *essid)
{
 struct zd1201 *zd = netdev_priv(dev);

 if (data->length > IW_ESSID_MAX_SIZE)
  return -EINVAL;
 if (data->length < 1)
  data->length = 1;
 zd->essidlen = data->length;
 memset(zd->essid, 0, IW_ESSID_MAX_SIZE+1);
 memcpy(zd->essid, essid, data->length);
 return zd1201_join(zd, zd->essid, zd->essidlen);
}
