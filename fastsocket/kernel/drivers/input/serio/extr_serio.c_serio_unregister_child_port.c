
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {scalar_t__ child; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_destroy_port (scalar_t__) ;
 int serio_disconnect_port (scalar_t__) ;
 int serio_mutex ;

void serio_unregister_child_port(struct serio *serio)
{
 mutex_lock(&serio_mutex);
 if (serio->child) {
  serio_disconnect_port(serio->child);
  serio_destroy_port(serio->child);
 }
 mutex_unlock(&serio_mutex);
}
