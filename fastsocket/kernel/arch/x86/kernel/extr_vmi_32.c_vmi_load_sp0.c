
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ss1; int sp0; } ;
struct tss_struct {TYPE_1__ x86_tss; } ;
struct thread_struct {scalar_t__ sysenter_cs; int sp0; } ;
struct TYPE_4__ {int (* set_kernel_stack ) (int ,int ) ;} ;


 int MSR_IA32_SYSENTER_CS ;
 int __KERNEL_DS ;
 int stub1 (int ,int ) ;
 scalar_t__ unlikely (int) ;
 TYPE_2__ vmi_ops ;
 int wrmsr (int ,scalar_t__,int ) ;

__attribute__((used)) static void vmi_load_sp0(struct tss_struct *tss,
       struct thread_struct *thread)
{
 tss->x86_tss.sp0 = thread->sp0;


 if (unlikely(tss->x86_tss.ss1 != thread->sysenter_cs)) {
  tss->x86_tss.ss1 = thread->sysenter_cs;
  wrmsr(MSR_IA32_SYSENTER_CS, thread->sysenter_cs, 0);
 }
 vmi_ops.set_kernel_stack(__KERNEL_DS, tss->x86_tss.sp0);
}
