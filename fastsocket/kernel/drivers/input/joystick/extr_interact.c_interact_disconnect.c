
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interact {int dev; } ;
struct gameport {int dummy; } ;


 int gameport_close (struct gameport*) ;
 struct interact* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct interact*) ;

__attribute__((used)) static void interact_disconnect(struct gameport *gameport)
{
 struct interact *interact = gameport_get_drvdata(gameport);

 input_unregister_device(interact->dev);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(interact);
}
