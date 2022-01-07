
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* USBVISION_VERSION_STRING ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_version(struct device *cd,
       struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s\n", USBVISION_VERSION_STRING);
}
