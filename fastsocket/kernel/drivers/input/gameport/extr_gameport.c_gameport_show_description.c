
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct gameport* to_gameport_port (struct device*) ;

__attribute__((used)) static ssize_t gameport_show_description(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct gameport *gameport = to_gameport_port(dev);
 return sprintf(buf, "%s\n", gameport->name);
}
