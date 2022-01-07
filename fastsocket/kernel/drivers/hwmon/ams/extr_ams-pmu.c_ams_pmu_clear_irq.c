
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ams_irq { ____Placeholder_ams_irq } ams_irq ;


 int AMS_FF_CLEAR ;
 int AMS_IRQ_FREEFALL ;
 int AMS_IRQ_SHOCK ;
 int AMS_SHOCK_CLEAR ;
 int ams_pmu_set_register (int ,int) ;

__attribute__((used)) static void ams_pmu_clear_irq(enum ams_irq reg)
{
 if (reg & AMS_IRQ_FREEFALL)
  ams_pmu_set_register(AMS_FF_CLEAR, 0x00);

 if (reg & AMS_IRQ_SHOCK)
  ams_pmu_set_register(AMS_SHOCK_CLEAR, 0x00);
}
