
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* machine_crash_shutdown ) (struct pt_regs*) ;} ;


 int default_machine_crash_shutdown (struct pt_regs*) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct pt_regs*) ;

void machine_crash_shutdown(struct pt_regs *regs)
{
 if (ppc_md.machine_crash_shutdown)
  ppc_md.machine_crash_shutdown(regs);
 else
  default_machine_crash_shutdown(regs);
}
