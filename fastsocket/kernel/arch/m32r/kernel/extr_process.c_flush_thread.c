
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct debug_trap {int dummy; } ;
struct TYPE_3__ {int debug_trap; } ;
struct TYPE_4__ {TYPE_1__ thread; int pid; } ;


 int DPRINTK (char*,int ) ;
 TYPE_2__* current ;
 int memset (int *,int ,int) ;

void flush_thread(void)
{
 DPRINTK("pid = %d\n", current->pid);
 memset(&current->thread.debug_trap, 0, sizeof(struct debug_trap));
}
