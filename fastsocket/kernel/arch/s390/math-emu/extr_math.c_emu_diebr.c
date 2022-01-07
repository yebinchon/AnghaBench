
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int display_emulation_not_implemented (struct pt_regs*,char*) ;

__attribute__((used)) static int emu_diebr (struct pt_regs *regs, int rx, int ry, int mask) {
        display_emulation_not_implemented(regs, "diebr");
        return 0;
}
