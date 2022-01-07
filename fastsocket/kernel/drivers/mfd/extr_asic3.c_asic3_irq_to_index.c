
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asic3 {int irq_base; } ;



__attribute__((used)) static inline int asic3_irq_to_index(struct asic3 *asic, int irq)
{
 return (irq - asic->irq_base) & 0xf;
}
