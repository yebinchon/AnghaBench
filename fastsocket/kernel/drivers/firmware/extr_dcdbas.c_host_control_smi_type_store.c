
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int host_control_smi_type ;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t host_control_smi_type_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 host_control_smi_type = simple_strtoul(buf, ((void*)0), 10);
 return count;
}
