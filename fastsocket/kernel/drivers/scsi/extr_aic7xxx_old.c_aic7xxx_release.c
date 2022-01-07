
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {struct aic7xxx_host* next; int pdev; int base; scalar_t__ maddr; scalar_t__ irq; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 scalar_t__ MAXREG ;
 scalar_t__ MINREG ;
 int aic7xxx_free (struct aic7xxx_host*) ;
 struct aic7xxx_host* first_aic7xxx ;
 int free_irq (scalar_t__,struct aic7xxx_host*) ;
 int iounmap (scalar_t__) ;
 int pci_dev_put (int ) ;
 int pci_release_regions (int ) ;
 int release_region (int ,scalar_t__) ;

__attribute__((used)) static int
aic7xxx_release(struct Scsi_Host *host)
{
  struct aic7xxx_host *p = (struct aic7xxx_host *) host->hostdata;
  struct aic7xxx_host *next, *prev;

  if(p->irq)
    free_irq(p->irq, p);






  if(!p->pdev)
    release_region(p->base, MAXREG - MINREG);






  prev = ((void*)0);
  next = first_aic7xxx;
  while(next != ((void*)0))
  {
    if(next == p)
    {
      if(prev == ((void*)0))
        first_aic7xxx = next->next;
      else
        prev->next = next->next;
    }
    else
    {
      prev = next;
    }
    next = next->next;
  }
  aic7xxx_free(p);
  return(0);
}
