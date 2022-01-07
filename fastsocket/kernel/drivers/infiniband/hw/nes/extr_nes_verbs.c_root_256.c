
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct nes_root_vpbl {TYPE_1__* pbl_vbase; scalar_t__ pbl_pbase; } ;
struct nes_device {int pcidev; } ;
struct TYPE_2__ {void* pa_high; void* pa_low; } ;


 void* cpu_to_le32 (int) ;
 int le32_to_cpu (void*) ;
 TYPE_1__* pci_alloc_consistent (int ,int,scalar_t__*) ;

__attribute__((used)) static u32 root_256(struct nes_device *nesdev,
      struct nes_root_vpbl *root_vpbl,
      struct nes_root_vpbl *new_root,
      u16 pbl_count_4k)
{
 u64 leaf_pbl;
 int i, j, k;

 if (pbl_count_4k == 1) {
  new_root->pbl_vbase = pci_alloc_consistent(nesdev->pcidev,
      512, &new_root->pbl_pbase);

  if (new_root->pbl_vbase == ((void*)0))
   return 0;

  leaf_pbl = (u64)root_vpbl->pbl_pbase;
  for (i = 0; i < 16; i++) {
   new_root->pbl_vbase[i].pa_low =
    cpu_to_le32((u32)leaf_pbl);
   new_root->pbl_vbase[i].pa_high =
    cpu_to_le32((u32)((((u64)leaf_pbl) >> 32)));
   leaf_pbl += 256;
  }
 } else {
  for (i = 3; i >= 0; i--) {
   j = i * 16;
   root_vpbl->pbl_vbase[j] = root_vpbl->pbl_vbase[i];
   leaf_pbl = le32_to_cpu(root_vpbl->pbl_vbase[j].pa_low) +
       (((u64)le32_to_cpu(root_vpbl->pbl_vbase[j].pa_high))
    << 32);
   for (k = 1; k < 16; k++) {
    leaf_pbl += 256;
    root_vpbl->pbl_vbase[j + k].pa_low =
      cpu_to_le32((u32)leaf_pbl);
    root_vpbl->pbl_vbase[j + k].pa_high =
        cpu_to_le32((u32)((((u64)leaf_pbl) >> 32)));
   }
  }
 }

 return 1;
}
