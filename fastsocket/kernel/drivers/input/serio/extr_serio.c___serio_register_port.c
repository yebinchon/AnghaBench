
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct module {int dummy; } ;


 int SERIO_REGISTER_PORT ;
 int serio_init_port (struct serio*) ;
 int serio_queue_event (struct serio*,struct module*,int ) ;

void __serio_register_port(struct serio *serio, struct module *owner)
{
 serio_init_port(serio);
 serio_queue_event(serio, owner, SERIO_REGISTER_PORT);
}
