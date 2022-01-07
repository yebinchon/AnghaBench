
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {size_t cpu; } ;


 TYPE_2__* cpu_tasks ;
 TYPE_1__* current_thread_info () ;
 int default_idle () ;
 int os_getpid () ;

void cpu_idle(void)
{
 cpu_tasks[current_thread_info()->cpu].pid = os_getpid();
 default_idle();
}
