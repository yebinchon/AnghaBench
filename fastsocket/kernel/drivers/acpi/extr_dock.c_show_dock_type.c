
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dock_station {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ platform_data; } ;
typedef int ssize_t ;


 int DOCK_IS_ATA ;
 int DOCK_IS_BAT ;
 int DOCK_IS_DOCK ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t show_dock_type(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct dock_station *dock_station = *((struct dock_station **)
  dev->platform_data);
 char *type;

 if (dock_station->flags & DOCK_IS_DOCK)
  type = "dock_station";
 else if (dock_station->flags & DOCK_IS_ATA)
  type = "ata_bay";
 else if (dock_station->flags & DOCK_IS_BAT)
  type = "battery_bay";
 else
  type = "unknown";

 return snprintf(buf, PAGE_SIZE, "%s\n", type);
}
