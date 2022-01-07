
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;
struct pci_dev {int dummy; } ;
typedef int pgprot_t ;
typedef enum pci_mmap_state { ____Placeholder_pci_mmap_state } pci_mmap_state ;


 int IORESOURCE_PREFETCH ;
 int pci_mmap_mem ;
 int pgprot_noncached (unsigned long) ;
 int pgprot_noncached_wc (unsigned long) ;
 unsigned long pgprot_val (int ) ;

__attribute__((used)) static pgprot_t __pci_mmap_set_pgprot(struct pci_dev *dev, struct resource *rp,
          pgprot_t protection,
          enum pci_mmap_state mmap_state,
          int write_combine)
{
 unsigned long prot = pgprot_val(protection);







 if (mmap_state != pci_mmap_mem)
  write_combine = 0;
 else if (write_combine == 0) {
  if (rp->flags & IORESOURCE_PREFETCH)
   write_combine = 1;
 }


 if (write_combine)
  return pgprot_noncached_wc(prot);
 else
  return pgprot_noncached(prot);
}
