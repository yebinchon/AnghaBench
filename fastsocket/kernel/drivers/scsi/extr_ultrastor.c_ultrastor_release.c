
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dma_channel; scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; } ;


 int free_dma (int) ;
 int free_irq (scalar_t__,int *) ;
 int release_region (scalar_t__,scalar_t__) ;
 int scsi_unregister (struct Scsi_Host*) ;

__attribute__((used)) static int ultrastor_release(struct Scsi_Host *shost)
{
 if (shost->irq)
  free_irq(shost->irq, ((void*)0));
 if (shost->dma_channel != 0xff)
  free_dma(shost->dma_channel);
 if (shost->io_port && shost->n_io_port)
  release_region(shost->io_port, shost->n_io_port);
 scsi_unregister(shost);
 return 0;
}
