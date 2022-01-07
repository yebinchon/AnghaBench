
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int tls_array; int task_size; } ;
struct TYPE_7__ {TYPE_1__ thread; } ;


 int IA32_PAGE_OFFSET ;
 int IA64_THREAD_DBG_VALID ;
 int IA64_THREAD_FPH_VALID ;
 scalar_t__ IS_IA32_PROCESS (int ) ;
 int USER_DS ;
 TYPE_2__* current ;
 int ia32_drop_ia64_partial_page_list (TYPE_2__*) ;
 int ia64_drop_fpu (TYPE_2__*) ;
 int memset (int ,int ,int) ;
 int set_fs (int ) ;
 int task_pt_regs (TYPE_2__*) ;

void
flush_thread (void)
{

 current->thread.flags &= ~(IA64_THREAD_FPH_VALID | IA64_THREAD_DBG_VALID);
 ia64_drop_fpu(current);
}
