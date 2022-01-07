
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* DRV_VERSION ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t fnic_show_drv_version(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", DRV_VERSION);
}
