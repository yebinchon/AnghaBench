
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int ap; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int ZD1201_RID_AUTHENTICATESTA ;
 int memcpy (unsigned char*,int ,int ) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_setconfig (struct zd1201*,int ,unsigned char*,int,int) ;

__attribute__((used)) static int zd1201_auth_sta(struct net_device *dev,
    struct iw_request_info *info, struct sockaddr *sta, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 unsigned char buffer[10];

 if (!zd->ap)
  return -EOPNOTSUPP;

 memcpy(buffer, sta->sa_data, ETH_ALEN);
 *(short*)(buffer+6) = 0;
 *(short*)(buffer+8) = 0;

 return zd1201_setconfig(zd, ZD1201_RID_AUTHENTICATESTA, buffer, 10, 1);
}
