
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pci_pbm_info {unsigned long devhandle; } ;
struct iommu_batch {unsigned long prot; unsigned long entry; unsigned long npages; int * pglist; TYPE_2__* dev; } ;
struct TYPE_3__ {struct pci_pbm_info* host_controller; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;


 int HV_PCI_TSBID (int ,unsigned long) ;
 int __pa (int *) ;
 long pci_sun4v_iommu_map (unsigned long,int ,unsigned long,unsigned long,int ) ;
 int printk (char*,unsigned long,int ,unsigned long,unsigned long,int ,long) ;
 scalar_t__ printk_ratelimit () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long iommu_batch_flush(struct iommu_batch *p)
{
 struct pci_pbm_info *pbm = p->dev->archdata.host_controller;
 unsigned long devhandle = pbm->devhandle;
 unsigned long prot = p->prot;
 unsigned long entry = p->entry;
 u64 *pglist = p->pglist;
 unsigned long npages = p->npages;

 while (npages != 0) {
  long num;

  num = pci_sun4v_iommu_map(devhandle, HV_PCI_TSBID(0, entry),
       npages, prot, __pa(pglist));
  if (unlikely(num < 0)) {
   if (printk_ratelimit())
    printk("iommu_batch_flush: IOMMU map of "
           "[%08lx:%08llx:%lx:%lx:%lx] failed with "
           "status %ld\n",
           devhandle, HV_PCI_TSBID(0, entry),
           npages, prot, __pa(pglist), num);
   return -1;
  }

  entry += num;
  npages -= num;
  pglist += num;
 }

 p->entry = entry;
 p->npages = 0;

 return 0;
}
