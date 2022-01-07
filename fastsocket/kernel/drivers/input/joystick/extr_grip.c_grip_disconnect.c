
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grip {scalar_t__* dev; } ;
struct gameport {int dummy; } ;


 int gameport_close (struct gameport*) ;
 struct grip* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct grip*) ;

__attribute__((used)) static void grip_disconnect(struct gameport *gameport)
{
 struct grip *grip = gameport_get_drvdata(gameport);
 int i;

 for (i = 0; i < 2; i++)
  if (grip->dev[i])
   input_unregister_device(grip->dev[i]);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(grip);
}
