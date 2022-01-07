
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CFG_NET_STATS ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char) ;

__attribute__((used)) static ssize_t show_net_stats(struct device *d, struct device_attribute *attr,
         char *buf)
{
 struct ipw_priv *priv = dev_get_drvdata(d);
 return sprintf(buf, "%c\n", (priv->config & CFG_NET_STATS) ? '1' : '0');
}
