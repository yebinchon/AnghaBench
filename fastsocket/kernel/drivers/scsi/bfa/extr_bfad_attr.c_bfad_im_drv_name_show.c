
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* BFAD_DRIVER_NAME ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
bfad_im_drv_name_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", BFAD_DRIVER_NAME);
}
