
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;


 int PAGES2KB (int ) ;
 int oom_freed_pages ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_oom_pages(struct sys_device *dev,
         struct sysdev_attribute *attr, char *buf)
{
 return sprintf(buf, "%lu\n", PAGES2KB(oom_freed_pages));
}
