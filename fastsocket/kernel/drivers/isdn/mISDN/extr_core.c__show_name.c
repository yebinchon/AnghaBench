
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_name (struct device*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t _show_name(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 strcpy(buf, dev_name(dev));
 return strlen(buf);
}
