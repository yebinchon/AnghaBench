
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* action; } ;
struct TYPE_5__ {int (* fn ) (TYPE_2__*) ;} ;


 int crash_kexec (int *) ;
 int debug_locks_off () ;
 int lgr_info_log () ;
 TYPE_2__ on_restart_trigger ;
 int smp_restart_with_online_cpu () ;
 int smp_send_stop () ;
 int stop_run (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int tracing_off () ;

void do_restart(void)
{
 tracing_off();
 debug_locks_off();
 lgr_info_log();
 smp_restart_with_online_cpu();
 smp_send_stop();



 on_restart_trigger.action->fn(&on_restart_trigger);
 stop_run(&on_restart_trigger);
}
