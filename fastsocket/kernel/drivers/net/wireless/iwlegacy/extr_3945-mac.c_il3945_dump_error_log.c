
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct il_priv* dev_get_drvdata (struct device*) ;
 int il3945_dump_nic_error_log (struct il_priv*) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t
il3945_dump_error_log(struct device *d, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct il_priv *il = dev_get_drvdata(d);
 char *p = (char *)buf;

 if (p[0] == '1')
  il3945_dump_nic_error_log(il);

 return strnlen(buf, count);
}
