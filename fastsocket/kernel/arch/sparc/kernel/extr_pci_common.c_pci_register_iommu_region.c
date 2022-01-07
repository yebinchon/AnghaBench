
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {char* name; int flags; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct pci_pbm_info {TYPE_2__ mem_space; TYPE_1__* op; } ;
struct TYPE_3__ {int node; } ;


 int GFP_KERNEL ;
 int IORESOURCE_BUSY ;
 struct resource* kzalloc (int,int ) ;
 scalar_t__* of_get_property (int ,char*,int *) ;
 int prom_halt () ;
 int prom_printf (char*) ;
 int request_resource (TYPE_2__*,struct resource*) ;

__attribute__((used)) static void pci_register_iommu_region(struct pci_pbm_info *pbm)
{
 const u32 *vdma = of_get_property(pbm->op->node, "virtual-dma", ((void*)0));

 if (vdma) {
  struct resource *rp = kzalloc(sizeof(*rp), GFP_KERNEL);

  if (!rp) {
   prom_printf("Cannot allocate IOMMU resource.\n");
   prom_halt();
  }
  rp->name = "IOMMU";
  rp->start = pbm->mem_space.start + (unsigned long) vdma[0];
  rp->end = rp->start + (unsigned long) vdma[1] - 1UL;
  rp->flags = IORESOURCE_BUSY;
  request_resource(&pbm->mem_space, rp);
 }
}
