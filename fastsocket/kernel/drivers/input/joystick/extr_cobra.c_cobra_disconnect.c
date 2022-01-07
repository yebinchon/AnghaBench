
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct cobra {int exists; int * dev; } ;


 int gameport_close (struct gameport*) ;
 struct cobra* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct cobra*) ;

__attribute__((used)) static void cobra_disconnect(struct gameport *gameport)
{
 struct cobra *cobra = gameport_get_drvdata(gameport);
 int i;

 for (i = 0; i < 2; i++)
  if ((cobra->exists >> i) & 1)
   input_unregister_device(cobra->dev[i]);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(cobra);
}
