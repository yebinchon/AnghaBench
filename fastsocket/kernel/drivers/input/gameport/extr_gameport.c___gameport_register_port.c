
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct gameport {int dummy; } ;


 int GAMEPORT_REGISTER_PORT ;
 int gameport_init_port (struct gameport*) ;
 int gameport_queue_event (struct gameport*,struct module*,int ) ;

void __gameport_register_port(struct gameport *gameport, struct module *owner)
{
 gameport_init_port(gameport);
 gameport_queue_event(gameport, owner, GAMEPORT_REGISTER_PORT);
}
