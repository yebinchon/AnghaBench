
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long val; } ;
typedef TYPE_1__ swp_entry_t ;


 unsigned long SRMMU_SWP_TYPE_MASK ;
 unsigned long SRMMU_SWP_TYPE_SHIFT ;

__attribute__((used)) static unsigned long srmmu_swp_type(swp_entry_t entry)
{
 return (entry.val >> SRMMU_SWP_TYPE_SHIFT) & SRMMU_SWP_TYPE_MASK;
}
