
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gameport {struct gameport* child; TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ (* reconnect ) (struct gameport*) ;} ;


 int gameport_disconnect_port (struct gameport*) ;
 int gameport_find_driver (struct gameport*) ;
 scalar_t__ stub1 (struct gameport*) ;

__attribute__((used)) static void gameport_reconnect_port(struct gameport *gameport)
{
 do {
  if (!gameport->drv || !gameport->drv->reconnect || gameport->drv->reconnect(gameport)) {
   gameport_disconnect_port(gameport);
   gameport_find_driver(gameport);

   break;
  }
  gameport = gameport->child;
 } while (gameport);
}
