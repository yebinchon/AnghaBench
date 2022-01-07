
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base_reg; } ;


 TYPE_1__* irq_banks ;
 int omap_writel (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void irq_bank_writel(unsigned long value, int bank, int offset)
{
 omap_writel(value, irq_banks[bank].base_reg + offset);
}
