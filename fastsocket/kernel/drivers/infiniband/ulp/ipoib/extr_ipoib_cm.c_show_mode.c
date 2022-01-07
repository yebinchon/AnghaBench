
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IPOIB_FLAG_ADMIN_CM ;
 struct ipoib_dev_priv* netdev_priv (int ) ;
 int sprintf (char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t show_mode(struct device *d, struct device_attribute *attr,
    char *buf)
{
 struct ipoib_dev_priv *priv = netdev_priv(to_net_dev(d));

 if (test_bit(IPOIB_FLAG_ADMIN_CM, &priv->flags))
  return sprintf(buf, "connected\n");
 else
  return sprintf(buf, "datagram\n");
}
