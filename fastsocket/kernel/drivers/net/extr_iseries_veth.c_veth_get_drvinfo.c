
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* driver; char* version; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static void veth_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strncpy(info->driver, DRV_NAME, sizeof(info->driver) - 1);
 info->driver[sizeof(info->driver) - 1] = '\0';
 strncpy(info->version, DRV_VERSION, sizeof(info->version) - 1);
 info->version[sizeof(info->version) - 1] = '\0';
}
