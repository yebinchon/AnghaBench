
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;

__attribute__((used)) static ssize_t
lpfc_fcp_cpu_map_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 int status = -EINVAL;
 return status;
}
