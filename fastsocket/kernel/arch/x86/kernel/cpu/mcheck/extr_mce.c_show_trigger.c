
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int mce_helper ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static ssize_t
show_trigger(struct sys_device *s, struct sysdev_attribute *attr, char *buf)
{
 strcpy(buf, mce_helper);
 strcat(buf, "\n");
 return strlen(mce_helper) + 1;
}
