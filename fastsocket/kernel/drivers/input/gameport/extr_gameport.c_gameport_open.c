
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport_driver {int dummy; } ;
struct gameport {scalar_t__ (* open ) (struct gameport*,int) ;} ;


 int GAMEPORT_MODE_RAW ;
 int gameport_set_drv (struct gameport*,struct gameport_driver*) ;
 scalar_t__ stub1 (struct gameport*,int) ;

int gameport_open(struct gameport *gameport, struct gameport_driver *drv, int mode)
{
 if (gameport->open) {
  if (gameport->open(gameport, mode)) {
   return -1;
  }
 } else {
  if (mode != GAMEPORT_MODE_RAW)
   return -1;
 }

 gameport_set_drv(gameport, drv);
 return 0;
}
