
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 int sprintf (int ,char*,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strcpy(info->driver, "xirc2ps_cs");
 sprintf(info->bus_info, "PCMCIA 0x%lx", dev->base_addr);
}
