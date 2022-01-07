
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;






 int emu_set_CC (struct pt_regs*,int) ;

__attribute__((used)) static inline void emu_set_CC_cs(struct pt_regs *regs, int class, int sign)
{
        switch (class) {
        case 129:
        case 131:
                emu_set_CC(regs, sign ? 1 : 2);
                break;
        case 128:
                emu_set_CC(regs, 0);
                break;
        case 130:
                emu_set_CC(regs, 3);
                break;
        }
}
