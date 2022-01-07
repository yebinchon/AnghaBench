
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dev; struct gameport* parent; struct gameport* child; } ;


 int device_release_driver (int *) ;
 int gameport_destroy_port (struct gameport*) ;

__attribute__((used)) static void gameport_disconnect_port(struct gameport *gameport)
{
 struct gameport *s, *parent;

 if (gameport->child) {





  for (s = gameport; s->child; s = s->child)
              ;

  do {
   parent = s->parent;

   device_release_driver(&s->dev);
   gameport_destroy_port(s);
  } while ((s = parent) != gameport);
 }




 device_release_driver(&gameport->dev);
}
