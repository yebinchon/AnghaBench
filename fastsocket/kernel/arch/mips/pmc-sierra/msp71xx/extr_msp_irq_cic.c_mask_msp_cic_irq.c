
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* CIC_VPE0_MSK_REG ;
 unsigned int MSP_CIC_INTBASE ;
 unsigned int MSP_PER_INTBASE ;
 int* PER_INT_MSK_REG ;

__attribute__((used)) static inline void mask_msp_cic_irq(unsigned int irq)
{

 if (irq < MSP_PER_INTBASE)
  *CIC_VPE0_MSK_REG &= ~(1 << (irq - MSP_CIC_INTBASE));
 else
  *PER_INT_MSK_REG &= ~(1 << (irq - MSP_PER_INTBASE));
}
