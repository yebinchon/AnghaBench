
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ata_port_info {int * port_ops; int link_flags; int flags; int udma_mask; int mwdma_mask; int pio_mask; } ;
struct TYPE_2__ {int flags; } ;
struct ata_port {int * ops; TYPE_1__ link; int flags; int udma_mask; int mwdma_mask; int pio_mask; } ;
struct ata_host {int n_ports; int * ops; struct ata_port** ports; } ;


 int ata_dummy_port_ops ;
 struct ata_host* ata_host_alloc (struct device*,int) ;

struct ata_host *ata_host_alloc_pinfo(struct device *dev,
          const struct ata_port_info * const * ppi,
          int n_ports)
{
 const struct ata_port_info *pi;
 struct ata_host *host;
 int i, j;

 host = ata_host_alloc(dev, n_ports);
 if (!host)
  return ((void*)0);

 for (i = 0, j = 0, pi = ((void*)0); i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];

  if (ppi[j])
   pi = ppi[j++];

  ap->pio_mask = pi->pio_mask;
  ap->mwdma_mask = pi->mwdma_mask;
  ap->udma_mask = pi->udma_mask;
  ap->flags |= pi->flags;
  ap->link.flags |= pi->link_flags;
  ap->ops = pi->port_ops;

  if (!host->ops && (pi->port_ops != &ata_dummy_port_ops))
   host->ops = pi->port_ops;
 }

 return host;
}
