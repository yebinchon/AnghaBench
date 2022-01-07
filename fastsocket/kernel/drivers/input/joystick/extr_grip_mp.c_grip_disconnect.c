
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grip_mp {TYPE_1__** port; } ;
struct gameport {int dummy; } ;
struct TYPE_2__ {int dev; scalar_t__ registered; } ;


 int gameport_close (struct gameport*) ;
 struct grip_mp* gameport_get_drvdata (struct gameport*) ;
 int gameport_set_drvdata (struct gameport*,int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct grip_mp*) ;

__attribute__((used)) static void grip_disconnect(struct gameport *gameport)
{
 struct grip_mp *grip = gameport_get_drvdata(gameport);
 int i;

 for (i = 0; i < 4; i++)
  if (grip->port[i]->registered)
   input_unregister_device(grip->port[i]->dev);
 gameport_close(gameport);
 gameport_set_drvdata(gameport, ((void*)0));
 kfree(grip);
}
