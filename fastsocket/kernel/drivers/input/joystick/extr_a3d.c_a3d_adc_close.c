
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {struct a3d* port_data; } ;
struct a3d {int gameport; } ;


 int gameport_stop_polling (int ) ;

__attribute__((used)) static void a3d_adc_close(struct gameport *gameport)
{
 struct a3d *a3d = gameport->port_data;

 gameport_stop_polling(a3d->gameport);
}
