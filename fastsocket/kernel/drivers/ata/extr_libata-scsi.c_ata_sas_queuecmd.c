
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; } ;
struct TYPE_2__ {int device; } ;
struct ata_port {TYPE_1__ link; } ;


 int DID_BAD_TARGET ;
 int __ata_scsi_queuecmd (struct scsi_cmnd*,void (*) (struct scsi_cmnd*),int ) ;
 int ata_dev_enabled (int ) ;
 int ata_scsi_dump_cdb (struct ata_port*,struct scsi_cmnd*) ;
 scalar_t__ likely (int ) ;

int ata_sas_queuecmd(struct scsi_cmnd *cmd, void (*done)(struct scsi_cmnd *),
       struct ata_port *ap)
{
 int rc = 0;

 ata_scsi_dump_cdb(ap, cmd);

 if (likely(ata_dev_enabled(ap->link.device)))
  rc = __ata_scsi_queuecmd(cmd, done, ap->link.device);
 else {
  cmd->result = (DID_BAD_TARGET << 16);
  done(cmd);
 }
 return rc;
}
