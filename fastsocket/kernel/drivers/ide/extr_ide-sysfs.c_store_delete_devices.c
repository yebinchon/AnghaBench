
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int ide_hwif_t ;


 size_t EINVAL ;
 int * dev_get_drvdata (struct device*) ;
 int ide_port_unregister_devices (int *) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static ssize_t store_delete_devices(struct device *portdev,
        struct device_attribute *attr,
        const char *buf, size_t n)
{
 ide_hwif_t *hwif = dev_get_drvdata(portdev);

 if (strncmp(buf, "1", n))
  return -EINVAL;

 ide_port_unregister_devices(hwif);

 return n;
}
