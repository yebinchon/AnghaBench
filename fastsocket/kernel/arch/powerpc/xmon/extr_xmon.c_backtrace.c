
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gpr; int nip; int link; } ;


 scalar_t__ scanhex (unsigned long*) ;
 int scannl () ;
 int xmon_show_stack (unsigned long,int ,int ) ;

__attribute__((used)) static void backtrace(struct pt_regs *excp)
{
 unsigned long sp;

 if (scanhex(&sp))
  xmon_show_stack(sp, 0, 0);
 else
  xmon_show_stack(excp->gpr[1], excp->link, excp->nip);
 scannl();
}
