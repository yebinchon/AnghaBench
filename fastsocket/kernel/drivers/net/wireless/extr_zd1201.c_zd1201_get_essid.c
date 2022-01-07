
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int essidlen; int essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 int memcpy (char*,int ,int ) ;
 struct zd1201* netdev_priv (struct net_device*) ;

__attribute__((used)) static int zd1201_get_essid(struct net_device *dev,
    struct iw_request_info *info, struct iw_point *data, char *essid)
{
 struct zd1201 *zd = netdev_priv(dev);

 memcpy(essid, zd->essid, zd->essidlen);
 data->flags = 1;
 data->length = zd->essidlen;

 return 0;
}
