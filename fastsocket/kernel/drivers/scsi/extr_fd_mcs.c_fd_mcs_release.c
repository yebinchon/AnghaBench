
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ irq; int n_io_port; int io_port; } ;


 int found ;
 int free_irq (scalar_t__,struct Scsi_Host**) ;
 struct Scsi_Host** hosts ;
 int release_region (int ,int ) ;

__attribute__((used)) static int fd_mcs_release(struct Scsi_Host *shpnt)
{
 int i, this_host, irq_usage;

 release_region(shpnt->io_port, shpnt->n_io_port);

 this_host = -1;
 irq_usage = 0;
 for (i = 0; i < found; i++) {
  if (shpnt == hosts[i])
   this_host = i;
  if (shpnt->irq == hosts[i]->irq)
   irq_usage++;
 }


 if (1 == irq_usage)
  free_irq(shpnt->irq, hosts);

 found--;

 for (i = this_host; i < found; i++)
  hosts[i] = hosts[i + 1];

 hosts[found] = ((void*)0);

 return 0;
}
