
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* action; } ;
struct TYPE_5__ {int (* fn ) (TYPE_2__*) ;} ;


 int lgr_info_log () ;
 TYPE_2__ on_panic_trigger ;
 int stop_run (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void do_panic(void)
{
 lgr_info_log();
 on_panic_trigger.action->fn(&on_panic_trigger);
 stop_run(&on_panic_trigger);
}
