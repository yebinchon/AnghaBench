
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EMMA2RH_BHIF_SW_INT_EN ;
 scalar_t__ EMMA2RH_SW_IRQ_BASE ;
 int emma2rh_in32 (int ) ;
 int emma2rh_out32 (int ,int) ;

__attribute__((used)) static void emma2rh_sw_irq_disable(unsigned int irq)
{
 u32 reg;

 irq -= EMMA2RH_SW_IRQ_BASE;

 reg = emma2rh_in32(EMMA2RH_BHIF_SW_INT_EN);
 reg &= ~(1 << irq);
 emma2rh_out32(EMMA2RH_BHIF_SW_INT_EN, reg);
}
