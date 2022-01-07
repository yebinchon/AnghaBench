
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HW_ICOLL_PRIORITYn ;
 scalar_t__ REGS_ICOLL_BASE ;
 int stmp3xxx_clearl (int,scalar_t__) ;

__attribute__((used)) static void stmp37xx_mask_irq(unsigned int irq)
{

 stmp3xxx_clearl(0x04 << ((irq % 4) * 8),
  REGS_ICOLL_BASE + HW_ICOLL_PRIORITYn + irq / 4 * 0x10);
}
