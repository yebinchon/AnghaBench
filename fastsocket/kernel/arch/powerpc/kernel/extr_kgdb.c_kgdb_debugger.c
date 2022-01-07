
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int TRAP (struct pt_regs*) ;
 int computeSignal (int ) ;
 int kgdb_handle_exception (int ,int ,int ,struct pt_regs*) ;

__attribute__((used)) static int kgdb_debugger(struct pt_regs *regs)
{
 return kgdb_handle_exception(0, computeSignal(TRAP(regs)), 0, regs);
}
