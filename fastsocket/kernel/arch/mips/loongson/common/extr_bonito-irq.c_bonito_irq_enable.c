
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BONITO_INTENSET ;
 unsigned int BONITO_IRQ_BASE ;
 int mmiowb () ;

__attribute__((used)) static inline void bonito_irq_enable(unsigned int irq)
{
 BONITO_INTENSET = (1 << (irq - BONITO_IRQ_BASE));
 mmiowb();
}
