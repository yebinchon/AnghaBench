
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int idle_pct ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t acpi_pad_idlepct_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "%d", idle_pct);
}
