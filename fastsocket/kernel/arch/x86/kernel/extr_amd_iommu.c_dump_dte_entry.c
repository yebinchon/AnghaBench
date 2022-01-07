
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int * data; } ;


 TYPE_1__* amd_iommu_dev_table ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static void dump_dte_entry(u16 devid)
{
 int i;

 for (i = 0; i < 8; ++i)
  pr_err("AMD-Vi: DTE[%d]: %08x\n", i,
   amd_iommu_dev_table[devid].data[i]);
}
