
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;



__attribute__((used)) static inline void emu_set_CC (struct pt_regs *regs, int cc)
{
        regs->psw.mask = (regs->psw.mask & 0xFFFFCFFF) | ((cc&3) << 12);
}
