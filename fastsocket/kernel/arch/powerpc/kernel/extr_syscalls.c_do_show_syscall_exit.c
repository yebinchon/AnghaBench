
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int printk (char*,unsigned long,int ,int ) ;
 int smp_processor_id () ;

void do_show_syscall_exit(unsigned long r3)
{
 printk(" -> %lx, current=%p cpu=%d\n", r3, current, smp_processor_id());
}
