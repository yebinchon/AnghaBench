
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct intel_iommu {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; struct intel_iommu* iommu; } ;


 int MAX_HPET_TBS ;
 TYPE_1__* ir_hpet ;

struct intel_iommu *map_hpet_to_ir(u8 hpet_id)
{
 int i;

 for (i = 0; i < MAX_HPET_TBS; i++)
  if (ir_hpet[i].id == hpet_id)
   return ir_hpet[i].iommu;
 return ((void*)0);
}
