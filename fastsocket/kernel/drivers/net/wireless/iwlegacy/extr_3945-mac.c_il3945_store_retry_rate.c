
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int retry_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct il_priv* dev_get_drvdata (struct device*) ;
 int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t
il3945_store_retry_rate(struct device *d, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct il_priv *il = dev_get_drvdata(d);

 il->retry_rate = simple_strtoul(buf, ((void*)0), 0);
 if (il->retry_rate <= 0)
  il->retry_rate = 1;

 return count;
}
