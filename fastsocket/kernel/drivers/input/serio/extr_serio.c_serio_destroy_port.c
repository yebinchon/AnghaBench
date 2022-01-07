
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct serio {int registered; TYPE_3__ dev; int node; TYPE_1__* parent; int (* stop ) (struct serio*) ;} ;
struct TYPE_5__ {int * child; } ;


 int device_del (TYPE_3__*) ;
 int list_del_init (int *) ;
 int put_device (TYPE_3__*) ;
 int serio_continue_rx (TYPE_1__*) ;
 struct serio* serio_get_pending_child (struct serio*) ;
 int serio_id_attr_group ;
 int serio_pause_rx (TYPE_1__*) ;
 int serio_remove_pending_events (struct serio*) ;
 int stub1 (struct serio*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void serio_destroy_port(struct serio *serio)
{
 struct serio *child;

 child = serio_get_pending_child(serio);
 if (child) {
  serio_remove_pending_events(child);
  put_device(&child->dev);
 }

 if (serio->stop)
  serio->stop(serio);

 if (serio->parent) {
  serio_pause_rx(serio->parent);
  serio->parent->child = ((void*)0);
  serio_continue_rx(serio->parent);
  serio->parent = ((void*)0);
 }

 if (serio->registered) {
  sysfs_remove_group(&serio->dev.kobj, &serio_id_attr_group);
  device_del(&serio->dev);
  serio->registered = 0;
 }

 list_del_init(&serio->node);
 serio_remove_pending_events(serio);
 put_device(&serio->dev);
}
