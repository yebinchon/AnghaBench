
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; scalar_t__ pfm_context; } ;
struct TYPE_9__ {TYPE_1__ thread; } ;


 int IA64_THREAD_DBG_VALID ;
 scalar_t__ IS_IA32_PROCESS (int ) ;
 TYPE_2__* current ;
 int ia32_drop_ia64_partial_page_list (TYPE_2__*) ;
 int ia64_drop_fpu (TYPE_2__*) ;
 int pfm_exit_thread (TYPE_2__*) ;
 int pfm_release_debug_registers (TYPE_2__*) ;
 int task_pt_regs (TYPE_2__*) ;

void
exit_thread (void)
{

 ia64_drop_fpu(current);
 if (IS_IA32_PROCESS(task_pt_regs(current)))
  ia32_drop_ia64_partial_page_list(current);
}
