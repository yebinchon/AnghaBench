
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int* gprs; } ;
typedef int addr_t ;



__attribute__((used)) static void* calc_addr(struct pt_regs *regs, int rx, int rb, int disp)
{
        addr_t addr;

        rx &= 15;
        rb &= 15;
        addr = disp & 0xfff;
        addr += (rx != 0) ? regs->gprs[rx] : 0;
        addr += (rb != 0) ? regs->gprs[rb] : 0;
        return (void*) addr;
}
