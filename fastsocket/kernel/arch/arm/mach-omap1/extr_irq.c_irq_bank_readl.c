
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base_reg; } ;


 TYPE_1__* irq_banks ;
 unsigned int omap_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int irq_bank_readl(int bank, int offset)
{
 return omap_readl(irq_banks[bank].base_reg + offset);
}
