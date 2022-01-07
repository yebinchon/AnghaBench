
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int handle; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ platform_data; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int PAGE_SIZE ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t show_dock_uid(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 unsigned long long lbuf;
 struct dock_station *dock_station = *((struct dock_station **)
  dev->platform_data);
 acpi_status status = acpi_evaluate_integer(dock_station->handle,
     "_UID", ((void*)0), &lbuf);
 if (ACPI_FAILURE(status))
     return 0;

 return snprintf(buf, PAGE_SIZE, "%llx\n", lbuf);
}
