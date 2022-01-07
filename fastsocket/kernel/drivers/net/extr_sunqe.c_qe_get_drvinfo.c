
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunqe {struct of_device* op; } ;
struct of_device {int node; } ;
struct net_device {int dummy; } ;
struct linux_prom_registers {int which_io; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 struct sunqe* netdev_priv (struct net_device*) ;
 struct linux_prom_registers* of_get_property (int ,char*,int *) ;
 int sprintf (int ,char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void qe_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 const struct linux_prom_registers *regs;
 struct sunqe *qep = netdev_priv(dev);
 struct of_device *op;

 strcpy(info->driver, "sunqe");
 strcpy(info->version, "3.0");

 op = qep->op;
 regs = of_get_property(op->node, "reg", ((void*)0));
 if (regs)
  sprintf(info->bus_info, "SBUS:%d", regs->which_io);

}
