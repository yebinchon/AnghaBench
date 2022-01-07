
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_event {int owner; } ;


 int kfree (struct serio_event*) ;
 int module_put (int ) ;

__attribute__((used)) static void serio_free_event(struct serio_event *event)
{
 module_put(event->owner);
 kfree(event);
}
