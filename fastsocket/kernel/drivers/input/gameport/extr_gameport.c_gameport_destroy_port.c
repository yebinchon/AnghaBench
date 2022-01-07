
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gameport {int dev; int node; scalar_t__ registered; TYPE_1__* parent; } ;
struct TYPE_2__ {int * child; } ;


 int device_del (int *) ;
 struct gameport* gameport_get_pending_child (struct gameport*) ;
 int gameport_remove_pending_events (struct gameport*) ;
 int list_del_init (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void gameport_destroy_port(struct gameport *gameport)
{
 struct gameport *child;

 child = gameport_get_pending_child(gameport);
 if (child) {
  gameport_remove_pending_events(child);
  put_device(&child->dev);
 }

 if (gameport->parent) {
  gameport->parent->child = ((void*)0);
  gameport->parent = ((void*)0);
 }

 if (gameport->registered) {
  device_del(&gameport->dev);
  gameport->registered = 0;
 }

 list_del_init(&gameport->node);

 gameport_remove_pending_events(gameport);
 put_device(&gameport->dev);
}
