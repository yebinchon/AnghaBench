
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int ssize_t ;


 int create_modalias (struct acpi_device*,char*,int) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t
acpi_device_modalias_show(struct device *dev, struct device_attribute *attr, char *buf) {
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 int len;


 len = create_modalias(acpi_dev, buf, 1024);
 if (len <= 0)
  return 0;
 buf[len++] = '\n';
 return len;
}
