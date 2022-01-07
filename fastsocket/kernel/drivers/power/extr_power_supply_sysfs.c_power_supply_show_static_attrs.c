
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {size_t type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct power_supply* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t power_supply_show_static_attrs(struct device *dev,
           struct device_attribute *attr,
           char *buf) {
 static char *type_text[] = { "Battery", "UPS", "Mains", "USB" };
 struct power_supply *psy = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", type_text[psy->type]);
}
