
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* TPACPI_NAME ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t thinkpad_acpi_pdev_name_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", TPACPI_NAME);
}
