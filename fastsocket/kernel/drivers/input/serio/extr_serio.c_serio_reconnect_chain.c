
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct serio* child; } ;


 scalar_t__ serio_reconnect_port (struct serio*) ;

__attribute__((used)) static void serio_reconnect_chain(struct serio *serio)
{
 do {
  if (serio_reconnect_port(serio)) {

   break;
  }
  serio = serio->child;
 } while (serio);
}
