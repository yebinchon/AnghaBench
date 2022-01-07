
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_event {int type; int object; } ;







 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_add_port (int ) ;
 int serio_attach_driver (int ) ;
 int serio_disconnect_port (int ) ;
 int serio_find_driver (int ) ;
 int serio_free_event (struct serio_event*) ;
 struct serio_event* serio_get_event () ;
 int serio_mutex ;
 int serio_reconnect_chain (int ) ;
 int serio_reconnect_port (int ) ;
 int serio_remove_duplicate_events (struct serio_event*) ;

__attribute__((used)) static void serio_handle_event(void)
{
 struct serio_event *event;

 mutex_lock(&serio_mutex);







 if ((event = serio_get_event())) {

  switch (event->type) {
   case 129:
    serio_add_port(event->object);
    break;

   case 130:
    serio_reconnect_port(event->object);
    break;

   case 128:
    serio_disconnect_port(event->object);
    serio_find_driver(event->object);
    break;

   case 131:
    serio_reconnect_chain(event->object);
    break;

   case 132:
    serio_attach_driver(event->object);
    break;

   default:
    break;
  }

  serio_remove_duplicate_events(event);
  serio_free_event(event);
 }

 mutex_unlock(&serio_mutex);
}
