
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ixp23xx_irq_type { ____Placeholder_ixp23xx_irq_type } ixp23xx_irq_type ;


 int IRQF_VALID ;


 int handle_edge_irq ;
 int handle_level_irq ;
 int ixp23xx_irq_edge_chip ;
 int ixp23xx_irq_level_chip ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_flags (unsigned int,int ) ;
 int set_irq_handler (unsigned int,int ) ;

__attribute__((used)) static void ixp23xx_config_irq(unsigned int irq, enum ixp23xx_irq_type type)
{
 switch (type) {
 case 128:
  set_irq_chip(irq, &ixp23xx_irq_level_chip);
  set_irq_handler(irq, handle_level_irq);
  break;
 case 129:
  set_irq_chip(irq, &ixp23xx_irq_edge_chip);
  set_irq_handler(irq, handle_edge_irq);
  break;
 }
 set_irq_flags(irq, IRQF_VALID);
}
