
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct amd_northbridge {int dummy; } ;
struct TYPE_6__ {int num; int flags; struct amd_northbridge* nb; } ;
struct TYPE_5__ {int x86; int x86_model; int x86_mask; } ;
struct TYPE_4__ {struct pci_dev* link; struct pci_dev* misc; } ;


 int AMD_NB_GART ;
 int AMD_NB_L3_INDEX_DISABLE ;
 int AMD_NB_L3_PARTITIONING ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amd_nb_link_ids ;
 int amd_nb_misc_ids ;
 int amd_nb_num () ;
 TYPE_3__ amd_northbridges ;
 TYPE_2__ boot_cpu_data ;
 struct amd_northbridge* kzalloc (int,int ) ;
 struct pci_dev* next_northbridge (struct pci_dev*,int ) ;
 TYPE_1__* node_to_amd_nb (int) ;

int amd_cache_northbridges(void)
{
 u16 i = 0;
 struct amd_northbridge *nb;
 struct pci_dev *misc, *link;

 if (amd_nb_num())
  return 0;

 misc = ((void*)0);
 while ((misc = next_northbridge(misc, amd_nb_misc_ids)) != ((void*)0))
  i++;

 if (i == 0)
  return 0;

 nb = kzalloc(i * sizeof(struct amd_northbridge), GFP_KERNEL);
 if (!nb)
  return -ENOMEM;

 amd_northbridges.nb = nb;
 amd_northbridges.num = i;

 link = misc = ((void*)0);
 for (i = 0; i != amd_nb_num(); i++) {
  node_to_amd_nb(i)->misc = misc =
   next_northbridge(misc, amd_nb_misc_ids);
  node_to_amd_nb(i)->link = link =
   next_northbridge(link, amd_nb_link_ids);
 }

 if (boot_cpu_data.x86 == 0xf || boot_cpu_data.x86 == 0x10 ||
     boot_cpu_data.x86 == 0x15)
  amd_northbridges.flags |= AMD_NB_GART;





 if (boot_cpu_data.x86 == 0x10 &&
     boot_cpu_data.x86_model >= 0x8 &&
     (boot_cpu_data.x86_model > 0x9 ||
      boot_cpu_data.x86_mask >= 0x1))
  amd_northbridges.flags |= AMD_NB_L3_INDEX_DISABLE;

 if (boot_cpu_data.x86 == 0x15)
  amd_northbridges.flags |= AMD_NB_L3_INDEX_DISABLE;


 if (boot_cpu_data.x86 == 0x15)
  amd_northbridges.flags |= AMD_NB_L3_PARTITIONING;

 return 0;
}
