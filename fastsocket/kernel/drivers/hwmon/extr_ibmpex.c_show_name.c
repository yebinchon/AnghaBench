
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* DRVNAME ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_name(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 return sprintf(buf, "%s\n", DRVNAME);
}
