
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned long,int) ;

__attribute__((used)) static inline void
cabriolet_update_irq_hw(unsigned int irq, unsigned long mask)
{
 int ofs = (irq - 16) / 8;
 outb(mask >> (16 + ofs * 8), 0x804 + ofs);
}
