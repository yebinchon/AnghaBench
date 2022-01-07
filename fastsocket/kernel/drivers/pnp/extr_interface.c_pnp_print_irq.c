
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bits; } ;
struct pnp_irq {int flags; TYPE_1__ map; } ;
typedef int pnp_info_buffer_t ;


 int IORESOURCE_IRQ_HIGHEDGE ;
 int IORESOURCE_IRQ_HIGHLEVEL ;
 int IORESOURCE_IRQ_LOWEDGE ;
 int IORESOURCE_IRQ_LOWLEVEL ;
 int IORESOURCE_IRQ_OPTIONAL ;
 int PNP_IRQ_NR ;
 scalar_t__ bitmap_empty (int ,int) ;
 int pnp_printf (int *,char*,...) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void pnp_print_irq(pnp_info_buffer_t * buffer, char *space,
     struct pnp_irq *irq)
{
 int first = 1, i;

 pnp_printf(buffer, "%sirq ", space);
 for (i = 0; i < PNP_IRQ_NR; i++)
  if (test_bit(i, irq->map.bits)) {
   if (!first) {
    pnp_printf(buffer, ",");
   } else {
    first = 0;
   }
   if (i == 2 || i == 9)
    pnp_printf(buffer, "2/9");
   else
    pnp_printf(buffer, "%i", i);
  }
 if (bitmap_empty(irq->map.bits, PNP_IRQ_NR))
  pnp_printf(buffer, "<none>");
 if (irq->flags & IORESOURCE_IRQ_HIGHEDGE)
  pnp_printf(buffer, " High-Edge");
 if (irq->flags & IORESOURCE_IRQ_LOWEDGE)
  pnp_printf(buffer, " Low-Edge");
 if (irq->flags & IORESOURCE_IRQ_HIGHLEVEL)
  pnp_printf(buffer, " High-Level");
 if (irq->flags & IORESOURCE_IRQ_LOWLEVEL)
  pnp_printf(buffer, " Low-Level");
 if (irq->flags & IORESOURCE_IRQ_OPTIONAL)
  pnp_printf(buffer, " (optional)");
 pnp_printf(buffer, "\n");
}
