
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned long,int) ;

__attribute__((used)) static inline void
eb64p_update_irq_hw(unsigned int irq, unsigned long mask)
{
 outb(mask >> (irq >= 24 ? 24 : 16), (irq >= 24 ? 0x27 : 0x26));
}
