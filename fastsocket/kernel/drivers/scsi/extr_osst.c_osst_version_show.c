
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* osst_version ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t osst_version_show(struct device_driver *ddd, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", osst_version);
}
