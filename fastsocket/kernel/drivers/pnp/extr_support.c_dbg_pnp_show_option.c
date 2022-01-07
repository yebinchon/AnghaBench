
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnp_port {int flags; scalar_t__ size; scalar_t__ align; scalar_t__ max; scalar_t__ min; } ;
struct pnp_dma {int map; int flags; } ;
struct TYPE_3__ {int bits; } ;
struct pnp_irq {int flags; TYPE_1__ map; } ;
struct pnp_mem {int flags; scalar_t__ size; scalar_t__ align; scalar_t__ max; scalar_t__ min; } ;
struct TYPE_4__ {struct pnp_dma dma; struct pnp_irq irq; struct pnp_mem mem; struct pnp_port port; } ;
struct pnp_option {int type; TYPE_2__ u; } ;
struct pnp_dev {int dev; } ;
typedef int buf ;





 int IORESOURCE_IRQ_OPTIONAL ;

 int PNP_IRQ_NR ;
 int bitmap_empty (int ,int) ;
 int pnp_dbg (int *,char*,char*) ;
 scalar_t__ pnp_option_is_dependent (struct pnp_option*) ;
 int pnp_option_priority_name (struct pnp_option*) ;
 int pnp_option_set (struct pnp_option*) ;
 scalar_t__ scnprintf (char*,int,char*,...) ;
 int test_bit (int,int ) ;

void dbg_pnp_show_option(struct pnp_dev *dev, struct pnp_option *option)
{
 char buf[128];
 int len = 0, i;
 struct pnp_port *port;
 struct pnp_mem *mem;
 struct pnp_irq *irq;
 struct pnp_dma *dma;

 if (pnp_option_is_dependent(option))
  len += scnprintf(buf + len, sizeof(buf) - len,
     "  dependent set %d (%s) ",
     pnp_option_set(option),
     pnp_option_priority_name(option));
 else
  len += scnprintf(buf + len, sizeof(buf) - len,
     "  independent ");

 switch (option->type) {
 case 130:
  port = &option->u.port;
  len += scnprintf(buf + len, sizeof(buf) - len, "io  min %#llx "
     "max %#llx align %lld size %lld flags %#x",
     (unsigned long long) port->min,
     (unsigned long long) port->max,
     (unsigned long long) port->align,
     (unsigned long long) port->size, port->flags);
  break;
 case 128:
  mem = &option->u.mem;
  len += scnprintf(buf + len, sizeof(buf) - len, "mem min %#llx "
     "max %#llx align %lld size %lld flags %#x",
     (unsigned long long) mem->min,
     (unsigned long long) mem->max,
     (unsigned long long) mem->align,
     (unsigned long long) mem->size, mem->flags);
  break;
 case 129:
  irq = &option->u.irq;
  len += scnprintf(buf + len, sizeof(buf) - len, "irq");
  if (bitmap_empty(irq->map.bits, PNP_IRQ_NR))
   len += scnprintf(buf + len, sizeof(buf) - len,
      " <none>");
  else {
   for (i = 0; i < PNP_IRQ_NR; i++)
    if (test_bit(i, irq->map.bits))
     len += scnprintf(buf + len,
        sizeof(buf) - len,
        " %d", i);
  }
  len += scnprintf(buf + len, sizeof(buf) - len, " flags %#x",
     irq->flags);
  if (irq->flags & IORESOURCE_IRQ_OPTIONAL)
   len += scnprintf(buf + len, sizeof(buf) - len,
      " (optional)");
  break;
 case 131:
  dma = &option->u.dma;
  len += scnprintf(buf + len, sizeof(buf) - len, "dma");
  if (!dma->map)
   len += scnprintf(buf + len, sizeof(buf) - len,
      " <none>");
  else {
   for (i = 0; i < 8; i++)
    if (dma->map & (1 << i))
     len += scnprintf(buf + len,
        sizeof(buf) - len,
        " %d", i);
  }
  len += scnprintf(buf + len, sizeof(buf) - len, " (bitmask %#x) "
     "flags %#x", dma->map, dma->flags);
  break;
 }
 pnp_dbg(&dev->dev, "%s\n", buf);
}
