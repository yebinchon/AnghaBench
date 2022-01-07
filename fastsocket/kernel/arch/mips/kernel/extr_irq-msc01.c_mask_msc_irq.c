
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSC01_IC_DISH ;
 int MSC01_IC_DISL ;
 int MSCIC_WRITE (int ,int) ;
 int irq_base ;

__attribute__((used)) static inline void mask_msc_irq(unsigned int irq)
{
 if (irq < (irq_base + 32))
  MSCIC_WRITE(MSC01_IC_DISL, 1<<(irq - irq_base));
 else
  MSCIC_WRITE(MSC01_IC_DISH, 1<<(irq - irq_base - 32));
}
