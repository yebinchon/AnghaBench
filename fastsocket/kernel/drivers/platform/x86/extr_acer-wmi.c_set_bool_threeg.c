
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int acpi_status ;


 int ACER_CAP_THREEG ;
 scalar_t__ ACPI_FAILURE (int ) ;
 size_t EINVAL ;
 int set_u32 (int ,int ) ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t set_bool_threeg(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 u32 tmp = simple_strtoul(buf, ((void*)0), 10);
 acpi_status status = set_u32(tmp, ACER_CAP_THREEG);
  if (ACPI_FAILURE(status))
   return -EINVAL;
 return count;
}
