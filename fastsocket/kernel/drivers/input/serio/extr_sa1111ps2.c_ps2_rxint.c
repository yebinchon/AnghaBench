
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {scalar_t__ base; int io; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int PS2STAT_RXF ;
 unsigned int PS2STAT_RXP ;
 unsigned int PS2STAT_STP ;
 scalar_t__ SA1111_PS2DATA ;
 scalar_t__ SA1111_PS2STAT ;
 unsigned int SERIO_FRAME ;
 unsigned int SERIO_PARITY ;
 int hweight8 (unsigned int) ;
 int sa1111_readl (scalar_t__) ;
 int sa1111_writel (unsigned int,scalar_t__) ;
 int serio_interrupt (int ,unsigned int,unsigned int) ;

__attribute__((used)) static irqreturn_t ps2_rxint(int irq, void *dev_id)
{
 struct ps2if *ps2if = dev_id;
 unsigned int scancode, flag, status;

 status = sa1111_readl(ps2if->base + SA1111_PS2STAT);
 while (status & PS2STAT_RXF) {
  if (status & PS2STAT_STP)
   sa1111_writel(PS2STAT_STP, ps2if->base + SA1111_PS2STAT);

  flag = (status & PS2STAT_STP ? SERIO_FRAME : 0) |
         (status & PS2STAT_RXP ? 0 : SERIO_PARITY);

  scancode = sa1111_readl(ps2if->base + SA1111_PS2DATA) & 0xff;

  if (hweight8(scancode) & 1)
   flag ^= SERIO_PARITY;

  serio_interrupt(ps2if->io, scancode, flag);

  status = sa1111_readl(ps2if->base + SA1111_PS2STAT);
        }

        return IRQ_HANDLED;
}
