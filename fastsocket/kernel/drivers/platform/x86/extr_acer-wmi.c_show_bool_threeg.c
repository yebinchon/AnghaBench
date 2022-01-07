
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 int ACER_CAP_THREEG ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int get_u32 (int*,int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_bool_threeg(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 u32 result; acpi_status status = get_u32(&result, ACER_CAP_THREEG);

 if (ACPI_SUCCESS(status))
  return sprintf(buf, "%u\n", result);
 return sprintf(buf, "Read error\n");
}
