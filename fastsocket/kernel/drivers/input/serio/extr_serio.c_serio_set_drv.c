
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int dummy; } ;
struct serio {struct serio_driver* drv; } ;


 int serio_continue_rx (struct serio*) ;
 int serio_pause_rx (struct serio*) ;

__attribute__((used)) static void serio_set_drv(struct serio *serio, struct serio_driver *drv)
{
 serio_pause_rx(serio);
 serio->drv = drv;
 serio_continue_rx(serio);
}
