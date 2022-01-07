
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 char* KBUILD_MODNAME ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void fwnet_get_drvinfo(struct net_device *net,
         struct ethtool_drvinfo *info)
{
 strcpy(info->driver, KBUILD_MODNAME);
 strcpy(info->bus_info, "ieee1394");
}
