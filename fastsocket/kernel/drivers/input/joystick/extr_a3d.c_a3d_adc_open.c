
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {struct a3d* port_data; } ;
struct a3d {int gameport; } ;


 int GAMEPORT_MODE_COOKED ;
 int gameport_start_polling (int ) ;

__attribute__((used)) static int a3d_adc_open(struct gameport *gameport, int mode)
{
 struct a3d *a3d = gameport->port_data;

 if (mode != GAMEPORT_MODE_COOKED)
  return -1;

 gameport_start_polling(a3d->gameport);
 return 0;
}
