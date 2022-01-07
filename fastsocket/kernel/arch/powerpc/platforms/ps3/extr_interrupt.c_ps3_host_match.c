
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;



__attribute__((used)) static int ps3_host_match(struct irq_host *h, struct device_node *np)
{

 return 1;
}
