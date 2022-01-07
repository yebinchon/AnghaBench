
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ irq; } ;


 int NCR5380_exit (struct Scsi_Host*) ;
 scalar_t__ SCSI_IRQ_NONE ;
 int free_irq (scalar_t__,struct Scsi_Host*) ;

int macscsi_release (struct Scsi_Host *shpnt)
{
 if (shpnt->irq != SCSI_IRQ_NONE)
  free_irq(shpnt->irq, shpnt);
 NCR5380_exit(shpnt);

 return 0;
}
