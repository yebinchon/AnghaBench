
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int dummy; } ;
struct serio {int dummy; } ;
struct device {int driver; } ;


 int serio_connect_driver (struct serio*,struct serio_driver*) ;
 struct serio_driver* to_serio_driver (int ) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static int serio_driver_probe(struct device *dev)
{
 struct serio *serio = to_serio_port(dev);
 struct serio_driver *drv = to_serio_driver(dev->driver);

 return serio_connect_driver(serio, drv);
}
