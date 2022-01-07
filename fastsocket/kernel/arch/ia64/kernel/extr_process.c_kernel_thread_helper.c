
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int old_k1; int old_iob; int task_size; int map_base; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int DEFAULT_MAP_BASE ;
 int DEFAULT_TASK_SIZE ;
 int IA64_KR_IO_BASE ;
 int IA64_KR_TSSD ;
 scalar_t__ IS_IA32_PROCESS (int ) ;
 TYPE_2__* current ;
 int ia64_set_kr (int ,int ) ;
 int stub1 (void*) ;
 int task_pt_regs (TYPE_2__*) ;

int
kernel_thread_helper (int (*fn)(void *), void *arg)
{
 return (*fn)(arg);
}
