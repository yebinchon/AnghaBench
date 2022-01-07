
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dev; struct serio* parent; struct serio* child; } ;


 int device_release_driver (int *) ;
 int serio_destroy_port (struct serio*) ;

__attribute__((used)) static void serio_disconnect_port(struct serio *serio)
{
 struct serio *s, *parent;

 if (serio->child) {





  for (s = serio; s->child; s = s->child)
              ;

  do {
   parent = s->parent;

   device_release_driver(&s->dev);
   serio_destroy_port(s);
  } while ((s = parent) != serio);
 }




 device_release_driver(&serio->dev);
}
