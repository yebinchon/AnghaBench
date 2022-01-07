
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int pkey; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipoib_dev_priv* netdev_priv (int ) ;
 int sprintf (char*,char*,int) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t show_pkey(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ipoib_dev_priv *priv = netdev_priv(to_net_dev(dev));

 return sprintf(buf, "0x%04x\n", priv->pkey);
}
