
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int command; int protocol; int flags; } ;
struct ata_queued_cmd {int flags; TYPE_1__* dev; struct ata_taskfile tf; } ;
struct TYPE_2__ {int flags; } ;


 int ATA_CMD_FLUSH ;
 int ATA_CMD_FLUSH_EXT ;
 int ATA_DFLAG_FLUSH_EXT ;
 int ATA_PROT_NODATA ;
 int ATA_QCFLAG_IO ;
 int ATA_TFLAG_DEVICE ;

__attribute__((used)) static unsigned int ata_scsi_flush_xlat(struct ata_queued_cmd *qc)
{
 struct ata_taskfile *tf = &qc->tf;

 tf->flags |= ATA_TFLAG_DEVICE;
 tf->protocol = ATA_PROT_NODATA;

 if (qc->dev->flags & ATA_DFLAG_FLUSH_EXT)
  tf->command = ATA_CMD_FLUSH_EXT;
 else
  tf->command = ATA_CMD_FLUSH;


 qc->flags |= ATA_QCFLAG_IO;

 return 0;
}
