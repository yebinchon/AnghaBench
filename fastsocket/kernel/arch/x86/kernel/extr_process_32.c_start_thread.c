
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {unsigned long ip; unsigned long sp; int cs; void* ss; void* es; void* ds; scalar_t__ fs; } ;
struct TYPE_3__ {int mm; } ;


 int USER_DS ;
 int __USER_CS ;
 void* __USER_DS ;
 TYPE_1__* current ;
 int free_thread_xstate (TYPE_1__*) ;
 int get_cpu () ;
 int load_user_cs_desc (int,int ) ;
 int put_cpu () ;
 int set_fs (int ) ;
 int set_user_gs (struct pt_regs*,int ) ;

void
start_thread(struct pt_regs *regs, unsigned long new_ip, unsigned long new_sp)
{
 int cpu;

 set_user_gs(regs, 0);

 regs->fs = 0;
 set_fs(USER_DS);
 regs->ds = __USER_DS;
 regs->es = __USER_DS;
 regs->ss = __USER_DS;
 regs->cs = __USER_CS;
 regs->ip = new_ip;
 regs->sp = new_sp;

 cpu = get_cpu();
 load_user_cs_desc(cpu, current->mm);
 put_cpu();




 free_thread_xstate(current);
}
