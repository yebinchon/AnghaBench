
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long flags; } ;


 unsigned long IORESOURCE_DMA ;
 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_IRQ ;
 unsigned long IORESOURCE_MEM ;

unsigned long pnp_resource_type(struct resource *res)
{
 return res->flags & (IORESOURCE_IO | IORESOURCE_MEM |
        IORESOURCE_IRQ | IORESOURCE_DMA);
}
