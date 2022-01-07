
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; } ;


 int strlcpy (int ,int ,int) ;
 int wl3501_dev_info ;

__attribute__((used)) static void wl3501_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, wl3501_dev_info, sizeof(info->driver));
}
