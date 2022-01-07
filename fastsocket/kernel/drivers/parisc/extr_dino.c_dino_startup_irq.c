
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dino_enable_irq (unsigned int) ;

__attribute__((used)) static unsigned int dino_startup_irq(unsigned int irq)
{
 dino_enable_irq(irq);
 return 0;
}
