
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;


 struct irq_host* i8259_host ;

struct irq_host *i8259_get_host(void)
{
 return i8259_host;
}
