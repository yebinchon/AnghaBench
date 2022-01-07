
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTENABLE ;
 int cached_irq_mask ;
 int set_sr (int,int ) ;

__attribute__((used)) static void xtensa_irq_mask(unsigned int irq)
{
 cached_irq_mask &= ~(1 << irq);
 set_sr (cached_irq_mask, INTENABLE);
}
