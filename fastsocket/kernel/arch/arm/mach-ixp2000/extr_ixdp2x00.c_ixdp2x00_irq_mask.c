
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slowport_cfg {int dummy; } ;


 unsigned long IXP2000_BOARD_IRQ_MASK (unsigned int) ;
 unsigned long* board_irq_mask ;
 int ixp2000_acquire_slowport (int *,struct slowport_cfg*) ;
 int ixp2000_reg_wrb (unsigned long*,unsigned long) ;
 int ixp2000_release_slowport (struct slowport_cfg*) ;
 scalar_t__ machine_is_ixdp2400 () ;
 int slowport_cpld_cfg ;

__attribute__((used)) static void ixdp2x00_irq_mask(unsigned int irq)
{
 unsigned long dummy;
 static struct slowport_cfg old_cfg;
 dummy = *board_irq_mask;
 dummy |= IXP2000_BOARD_IRQ_MASK(irq);
 ixp2000_reg_wrb(board_irq_mask, dummy);





}
