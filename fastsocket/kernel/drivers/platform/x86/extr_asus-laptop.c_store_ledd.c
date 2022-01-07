
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ ledd_status; } ;


 TYPE_1__* hotk ;
 int ledd_set_handle ;
 int parse_arg (char const*,size_t,int*) ;
 int pr_warning (char*) ;
 scalar_t__ write_acpi_int (int ,int *,int,int *) ;

__attribute__((used)) static ssize_t store_ledd(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 int rv, value;

 rv = parse_arg(buf, count, &value);
 if (rv > 0) {
  if (write_acpi_int(ledd_set_handle, ((void*)0), value, ((void*)0)))
   pr_warning("LED display write failed\n");
  else
   hotk->ledd_status = (u32) value;
 }
 return rv;
}
