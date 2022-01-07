
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int eeprom_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int *) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_eeprom_delay(struct device *d,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ipw_priv *p = dev_get_drvdata(d);
 sscanf(buf, "%i", &p->eeprom_delay);
 return strnlen(buf, count);
}
