
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct device {int dummy; } ;


 int serio_cleanup (struct serio*) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static void serio_shutdown(struct device *dev)
{
 struct serio *serio = to_serio_port(dev);

 serio_cleanup(serio);
}
