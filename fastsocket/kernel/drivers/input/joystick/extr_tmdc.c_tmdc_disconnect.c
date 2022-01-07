
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmdc {struct tmdc** port; int dev; } ;
struct gameport {int dummy; } ;


 int gameport_close (struct gameport*) ;
 struct tmdc* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct tmdc*) ;

__attribute__((used)) static void tmdc_disconnect(struct gameport *gameport)
{
 struct tmdc *tmdc = gameport_get_drvdata(gameport);
 int i;

 for (i = 0; i < 2; i++) {
  if (tmdc->port[i]) {
   input_unregister_device(tmdc->port[i]->dev);
   kfree(tmdc->port[i]);
  }
 }
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(tmdc);
}
