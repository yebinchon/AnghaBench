
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;


 struct device_node* cpld_pic_node ;

__attribute__((used)) static int
cpld_pic_host_match(struct irq_host *h, struct device_node *node)
{
 return cpld_pic_node == node;
}
