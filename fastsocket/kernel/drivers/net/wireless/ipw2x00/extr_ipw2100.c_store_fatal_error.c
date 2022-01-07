
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct ipw2100_priv* dev_get_drvdata (struct device*) ;
 int schedule_reset (struct ipw2100_priv*) ;

__attribute__((used)) static ssize_t store_fatal_error(struct device *d,
     struct device_attribute *attr, const char *buf,
     size_t count)
{
 struct ipw2100_priv *priv = dev_get_drvdata(d);
 schedule_reset(priv);
 return count;
}
