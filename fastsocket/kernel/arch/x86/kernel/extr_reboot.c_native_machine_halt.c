
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TB_SHUTDOWN_HALT ;
 int machine_shutdown () ;
 int stop_this_cpu (int *) ;
 int tboot_shutdown (int ) ;

__attribute__((used)) static void native_machine_halt(void)
{

 machine_shutdown();

 tboot_shutdown(TB_SHUTDOWN_HALT);


 stop_this_cpu(((void*)0));
}
