
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESET ;
 int RESET_PORT ;
 int cobalt_machine_halt () ;
 int writeb (int ,int ) ;

void cobalt_machine_restart(char *command)
{
 writeb(RESET, RESET_PORT);


 cobalt_machine_halt();
}
