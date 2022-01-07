
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int comm; int pid; } ;
struct TYPE_3__ {int version; int release; } ;


 TYPE_2__* current ;
 TYPE_1__* init_utsname () ;
 int print_tainted () ;
 int printk (char*,int ,int ,int ,int ,int,int ) ;
 int show_trace (int *,int *,unsigned long*) ;
 scalar_t__ strcspn (int ,char*) ;

void dump_stack(void)
{
 unsigned long stack;

 printk("Pid: %d, comm: %.20s %s %s %.*s\n",
  current->pid, current->comm, print_tainted(),
  init_utsname()->release,
  (int)strcspn(init_utsname()->version, " "),
  init_utsname()->version);
 show_trace(((void*)0), ((void*)0), &stack);
}
