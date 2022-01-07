
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int handle_irq; } ;
typedef int irq_flow_handler_t ;


 int _set_irq_handler (unsigned int,int ) ;
 int handle_level_irq ;
 struct irq_desc* irq_desc ;

__attribute__((used)) static inline void bfin_set_irq_handler(unsigned irq, irq_flow_handler_t handle)
{



 struct irq_desc *desc = irq_desc + irq;


 desc->handle_irq = handle;

}
