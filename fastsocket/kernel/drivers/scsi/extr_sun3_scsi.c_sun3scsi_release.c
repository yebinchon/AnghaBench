
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ irq; } ;


 scalar_t__ SCSI_IRQ_NONE ;
 int free_irq (scalar_t__,struct Scsi_Host*) ;
 int iounmap (void*) ;
 scalar_t__ sun3_scsi_regp ;

int sun3scsi_release (struct Scsi_Host *shpnt)
{
 if (shpnt->irq != SCSI_IRQ_NONE)
  free_irq(shpnt->irq, shpnt);

 iounmap((void *)sun3_scsi_regp);

 return 0;
}
