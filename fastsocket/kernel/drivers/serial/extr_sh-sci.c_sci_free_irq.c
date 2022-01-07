
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_port {scalar_t__* irqs; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int free_irq (scalar_t__,struct sci_port*) ;

__attribute__((used)) static void sci_free_irq(struct sci_port *port)
{
 int i;

 if (port->irqs[0] == port->irqs[1])
  free_irq(port->irqs[0], port);
 else {
  for (i = 0; i < ARRAY_SIZE(port->irqs); i++) {
   if (!port->irqs[i])
    continue;

   free_irq(port->irqs[i], port);
  }
 }
}
