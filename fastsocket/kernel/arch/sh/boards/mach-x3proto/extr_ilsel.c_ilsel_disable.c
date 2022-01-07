
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (unsigned int,int *) ;
 unsigned int ctrl_inw (unsigned long) ;
 int ctrl_outw (unsigned int,unsigned long) ;
 int ilsel_level_map ;
 unsigned long mk_ilsel_addr (unsigned int) ;
 int mk_ilsel_shift (unsigned int) ;

void ilsel_disable(unsigned int irq)
{
 unsigned long addr;
 unsigned int tmp;

 addr = mk_ilsel_addr(irq);

 tmp = ctrl_inw(addr);
 tmp &= ~(0xf << mk_ilsel_shift(irq));
 ctrl_outw(tmp, addr);

 clear_bit(irq, &ilsel_level_map);
}
