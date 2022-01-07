
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int proto; int id; int extra; } ;
struct serio {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int,int) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static ssize_t serio_show_modalias(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct serio *serio = to_serio_port(dev);

 return sprintf(buf, "serio:ty%02Xpr%02Xid%02Xex%02X\n",
   serio->id.type, serio->id.proto, serio->id.id, serio->id.extra);
}
