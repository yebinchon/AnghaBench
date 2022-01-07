
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {scalar_t__ bd_stash_en; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gfar_private* netdev_priv (int ) ;
 int sprintf (char*,char*,char*) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t gfar_show_bd_stash(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct gfar_private *priv = netdev_priv(to_net_dev(dev));

 return sprintf(buf, "%s\n", priv->bd_stash_en ? "on" : "off");
}
