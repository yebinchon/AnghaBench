
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static inline void handle_one_irq(unsigned int irq)
{
 generic_handle_irq(irq);
}
