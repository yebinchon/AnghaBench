
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ platform_data; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_flags(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct dock_station *dock_station = *((struct dock_station **)
  dev->platform_data);
 return snprintf(buf, PAGE_SIZE, "%d\n", dock_station->flags);

}
