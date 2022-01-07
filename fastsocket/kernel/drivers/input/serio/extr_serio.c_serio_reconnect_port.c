
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int serio_disconnect_port (struct serio*) ;
 int serio_find_driver (struct serio*) ;
 int serio_reconnect_driver (struct serio*) ;

__attribute__((used)) static int serio_reconnect_port(struct serio *serio)
{
 int error = serio_reconnect_driver(serio);

 if (error) {
  serio_disconnect_port(serio);
  serio_find_driver(serio);
 }

 return error;
}
