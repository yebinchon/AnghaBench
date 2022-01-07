
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {struct device_node* of_node; } ;
struct device_node {int dummy; } ;



__attribute__((used)) static int ipic_host_match(struct irq_host *h, struct device_node *node)
{

 return h->of_node == ((void*)0) || h->of_node == node;
}
