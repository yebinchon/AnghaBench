
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; } ;


 int DRIVER_NAME ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void mpc52xx_fec_get_drvinfo(struct net_device *dev,
  struct ethtool_drvinfo *info)
{
 strcpy(info->driver, DRIVER_NAME);
}
