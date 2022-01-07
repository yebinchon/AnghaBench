
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef scalar_t__ u32 ;
struct pci_pbm_info {unsigned long ino_bitmap; TYPE_1__* op; scalar_t__ pci_last_busno; scalar_t__ pci_first_busno; } ;
struct TYPE_2__ {int node; } ;


 scalar_t__* of_get_property (int ,char*,int *) ;

void pci_get_pbm_props(struct pci_pbm_info *pbm)
{
 const u32 *val = of_get_property(pbm->op->node, "bus-range", ((void*)0));

 pbm->pci_first_busno = val[0];
 pbm->pci_last_busno = val[1];

 val = of_get_property(pbm->op->node, "ino-bitmap", ((void*)0));
 if (val) {
  pbm->ino_bitmap = (((u64)val[1] << 32UL) |
       ((u64)val[0] << 0UL));
 }
}
