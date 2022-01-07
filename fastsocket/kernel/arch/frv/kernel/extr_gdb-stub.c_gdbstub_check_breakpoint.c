
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pc; } ;
struct TYPE_3__ {unsigned long addr; } ;


 TYPE_2__* __debug_frame ;
 TYPE_1__* gdbstub_bkpts ;

__attribute__((used)) static void gdbstub_check_breakpoint(void)
{
 unsigned long addr = __debug_frame->pc - 4;
 int bkpt;

 for (bkpt = 255; bkpt >= 0; bkpt--)
  if (gdbstub_bkpts[bkpt].addr == addr)
   break;
 if (bkpt >= 0)
  __debug_frame->pc = addr;



}
