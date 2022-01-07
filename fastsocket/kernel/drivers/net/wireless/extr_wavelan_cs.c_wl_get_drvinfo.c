
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; } ;


 int strncpy (int ,char*,int) ;

__attribute__((used)) static void wl_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strncpy(info->driver, "wavelan_cs", sizeof(info->driver)-1);
}
