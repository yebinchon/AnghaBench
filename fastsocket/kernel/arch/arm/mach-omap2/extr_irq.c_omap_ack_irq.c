
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTC_CONTROL ;
 int intc_bank_write_reg (int,int *,int ) ;
 int * irq_banks ;

__attribute__((used)) static void omap_ack_irq(unsigned int irq)
{
 intc_bank_write_reg(0x1, &irq_banks[0], INTC_CONTROL);
}
