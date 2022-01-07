
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int rx_stash_size; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gfar_private* netdev_priv (int ) ;
 int sprintf (char*,char*,int) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t gfar_show_rx_stash_size(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct gfar_private *priv = netdev_priv(to_net_dev(dev));

 return sprintf(buf, "%d\n", priv->rx_stash_size);
}
