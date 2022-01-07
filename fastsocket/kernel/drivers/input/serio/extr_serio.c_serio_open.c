
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int dummy; } ;
struct serio {scalar_t__ (* open ) (struct serio*) ;} ;


 int serio_set_drv (struct serio*,struct serio_driver*) ;
 scalar_t__ stub1 (struct serio*) ;

int serio_open(struct serio *serio, struct serio_driver *drv)
{
 serio_set_drv(serio, drv);

 if (serio->open && serio->open(serio)) {
  serio_set_drv(serio, ((void*)0));
  return -1;
 }
 return 0;
}
