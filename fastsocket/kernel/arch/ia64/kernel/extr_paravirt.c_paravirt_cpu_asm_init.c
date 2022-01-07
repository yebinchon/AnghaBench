
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pv_cpu_asm_switch {unsigned long switch_to; unsigned long leave_syscall; unsigned long work_processed_syscall; unsigned long leave_kernel; } ;



void
paravirt_cpu_asm_init(const struct pv_cpu_asm_switch *cpu_asm_switch)
{
 extern unsigned long paravirt_switch_to_targ;
 extern unsigned long paravirt_leave_syscall_targ;
 extern unsigned long paravirt_work_processed_syscall_targ;
 extern unsigned long paravirt_leave_kernel_targ;

 paravirt_switch_to_targ = cpu_asm_switch->switch_to;
 paravirt_leave_syscall_targ = cpu_asm_switch->leave_syscall;
 paravirt_work_processed_syscall_targ =
  cpu_asm_switch->work_processed_syscall;
 paravirt_leave_kernel_targ = cpu_asm_switch->leave_kernel;
}
