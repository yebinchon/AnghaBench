
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* PMCRAID_DRIVER_DATE ;
 char* PMCRAID_DRIVER_VERSION ;
 int snprintf (char*,int ,char*,char*,char*) ;

__attribute__((used)) static ssize_t pmcraid_show_drv_version(
 struct device *dev,
 struct device_attribute *attr,
 char *buf
)
{
 return snprintf(buf, PAGE_SIZE, "version: %s, build date: %s\n",
   PMCRAID_DRIVER_VERSION, PMCRAID_DRIVER_DATE);
}
