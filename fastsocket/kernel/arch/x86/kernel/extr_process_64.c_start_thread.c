
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ip; unsigned long sp; int flags; int ss; int cs; } ;


 int USER_DS ;
 int __USER_CS ;
 int __USER_DS ;
 int current ;
 int ds ;
 int es ;
 int free_thread_xstate (int ) ;
 int fs ;
 int load_gs_index (int ) ;
 int loadsegment (int ,int ) ;
 int old_rsp ;
 int percpu_write (int ,unsigned long) ;
 int set_fs (int ) ;

void
start_thread(struct pt_regs *regs, unsigned long new_ip, unsigned long new_sp)
{
 loadsegment(fs, 0);
 loadsegment(es, 0);
 loadsegment(ds, 0);
 load_gs_index(0);
 regs->ip = new_ip;
 regs->sp = new_sp;
 percpu_write(old_rsp, new_sp);
 regs->cs = __USER_CS;
 regs->ss = __USER_DS;
 regs->flags = 0x200;
 set_fs(USER_DS);



 free_thread_xstate(current);
}
