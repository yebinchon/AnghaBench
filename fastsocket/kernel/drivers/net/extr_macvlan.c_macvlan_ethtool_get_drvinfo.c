
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int snprintf (int ,int,char*) ;

__attribute__((used)) static void macvlan_ethtool_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *drvinfo)
{
 snprintf(drvinfo->driver, 32, "macvlan");
 snprintf(drvinfo->version, 32, "0.1");
}
