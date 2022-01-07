
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_pin_list {int dummy; } ;


 int GFP_ATOMIC ;
 struct irq_pin_list* kzalloc_node (int,int ,int) ;

__attribute__((used)) static struct irq_pin_list *get_one_free_irq_2_pin(int node)
{
 struct irq_pin_list *pin;

 pin = kzalloc_node(sizeof(*pin), GFP_ATOMIC, node);

 return pin;
}
