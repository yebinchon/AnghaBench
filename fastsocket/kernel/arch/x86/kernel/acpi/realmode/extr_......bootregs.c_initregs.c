
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int gs; int fs; void* es; void* ds; int eflags; } ;


 int X86_EFLAGS_CF ;
 void* ds () ;
 int fs () ;
 int gs () ;
 int memset (struct biosregs*,int ,int) ;

void initregs(struct biosregs *reg)
{
 memset(reg, 0, sizeof *reg);
 reg->eflags |= X86_EFLAGS_CF;
 reg->ds = ds();
 reg->es = ds();
 reg->fs = fs();
 reg->gs = gs();
}
