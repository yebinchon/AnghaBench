
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port_info {int port_ops; int flags; int udma_mask; int mwdma_mask; int pio_mask; } ;
struct ata_port {int cbl; int ops; int flags; int udma_mask; int mwdma_mask; int pio_mask; int * lock; scalar_t__ port_no; } ;
struct ata_host {int lock; } ;
struct Scsi_Host {int dummy; } ;


 int ATA_CBL_SATA ;
 struct ata_port* ata_port_alloc (struct ata_host*) ;

struct ata_port *ata_sas_port_alloc(struct ata_host *host,
        struct ata_port_info *port_info,
        struct Scsi_Host *shost)
{
 struct ata_port *ap;

 ap = ata_port_alloc(host);
 if (!ap)
  return ((void*)0);

 ap->port_no = 0;
 ap->lock = &host->lock;
 ap->pio_mask = port_info->pio_mask;
 ap->mwdma_mask = port_info->mwdma_mask;
 ap->udma_mask = port_info->udma_mask;
 ap->flags |= port_info->flags;
 ap->ops = port_info->port_ops;
 ap->cbl = ATA_CBL_SATA;

 return ap;
}
