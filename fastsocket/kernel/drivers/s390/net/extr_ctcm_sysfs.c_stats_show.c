
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctcm_priv {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int ctcm_print_statistics (struct ctcm_priv*) ;
 struct ctcm_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t stats_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct ctcm_priv *priv = dev_get_drvdata(dev);
 if (!priv)
  return -ENODEV;
 ctcm_print_statistics(priv);
 return sprintf(buf, "0\n");
}
