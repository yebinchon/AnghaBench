
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prism2_hostapd_param {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
prism2_ioctl_mlme(struct net_device *dev, struct prism2_hostapd_param *param)
{
 return -EOPNOTSUPP;
}
