
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short inw (int) ;
 int local_irq_disable () ;
 int outw (short,int) ;

void arch_reset(char mode, const char *cmd)
{
        short temp;
        local_irq_disable();

        outw(0x09,0x24);
        temp=inw(0x26);
        temp = temp | (1<<3) | (1<<10);
        outw(0x09,0x24);
        outw(temp,0x26);
}
