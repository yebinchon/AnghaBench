
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int regdump_len; } ;


 int mcs7830_get_regs_len (struct net_device*) ;
 int usbnet_get_drvinfo (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static void mcs7830_get_drvinfo(struct net_device *net, struct ethtool_drvinfo *drvinfo)
{
 usbnet_get_drvinfo(net, drvinfo);
 drvinfo->regdump_len = mcs7830_get_regs_len(net);
}
