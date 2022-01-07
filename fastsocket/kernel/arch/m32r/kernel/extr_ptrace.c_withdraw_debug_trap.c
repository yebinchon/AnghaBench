
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int bpc; } ;
typedef int code ;


 int access_process_vm (int ,unsigned long,unsigned long*,int,int) ;
 int current ;
 int invalidate_cache () ;
 scalar_t__ unregister_debug_trap (int ,unsigned long,unsigned long*) ;

void
withdraw_debug_trap(struct pt_regs *regs)
{
 unsigned long addr;
 unsigned long code;

  addr = (regs->bpc - 2) & ~3;
 regs->bpc -= 2;
 if (unregister_debug_trap(current, addr, &code)) {
     access_process_vm(current, addr, &code, sizeof(code), 1);
     invalidate_cache();
 }
}
