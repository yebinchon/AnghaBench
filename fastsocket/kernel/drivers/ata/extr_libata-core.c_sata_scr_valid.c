
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int flags; TYPE_1__* ops; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {scalar_t__ scr_read; } ;


 int ATA_FLAG_SATA ;

int sata_scr_valid(struct ata_link *link)
{
 struct ata_port *ap = link->ap;

 return (ap->flags & ATA_FLAG_SATA) && ap->ops->scr_read;
}
