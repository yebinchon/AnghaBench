
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int irq; } ;
struct resource {int end; int start; int * parent; int flags; } ;


 int IORESOURCE_IRQ ;

__attribute__((used)) static void sm501_create_irq(struct sm501_devdata *sm,
        struct resource *res)
{
 res->flags = IORESOURCE_IRQ;
 res->parent = ((void*)0);
 res->start = res->end = sm->irq;
}
