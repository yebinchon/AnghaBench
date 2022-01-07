
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {scalar_t__ dspcfg_workaround; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct netdev_private* netdev_priv (int ) ;
 int sprintf (char*,char*,char*) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t natsemi_show_dspcfg_workaround(struct device *dev,
             struct device_attribute *attr,
           char *buf)
{
 struct netdev_private *np = netdev_priv(to_net_dev(dev));

 return sprintf(buf, "%s\n", np->dspcfg_workaround ? "on" : "off");
}
