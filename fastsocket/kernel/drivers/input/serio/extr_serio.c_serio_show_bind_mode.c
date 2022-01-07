
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {scalar_t__ manual_bind; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static ssize_t serio_show_bind_mode(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct serio *serio = to_serio_port(dev);
 return sprintf(buf, "%s\n", serio->manual_bind ? "manual" : "auto");
}
