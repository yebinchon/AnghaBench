
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iotlb_entry {int dummy; } ;
struct cr_regs {int dummy; } ;
struct TYPE_2__ {int (* cr_to_e ) (struct cr_regs*,struct iotlb_entry*) ;} ;


 int BUG_ON (int) ;
 TYPE_1__* arch_iommu ;
 int stub1 (struct cr_regs*,struct iotlb_entry*) ;

void iotlb_cr_to_e(struct cr_regs *cr, struct iotlb_entry *e)
{
 BUG_ON(!cr || !e);

 arch_iommu->cr_to_e(cr, e);
}
