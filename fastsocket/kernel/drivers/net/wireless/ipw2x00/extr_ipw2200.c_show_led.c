
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CFG_NO_LED ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_led(struct device *d, struct device_attribute *attr,
   char *buf)
{
 struct ipw_priv *priv = dev_get_drvdata(d);
 return sprintf(buf, "%d\n", (priv->config & CFG_NO_LED) ? 0 : 1);
}
