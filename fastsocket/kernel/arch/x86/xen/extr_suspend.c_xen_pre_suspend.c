
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* mfn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; void* store_mfn; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int FIX_PARAVIRT_BOOTMAP ;
 int * HYPERVISOR_shared_info ;
 scalar_t__ HYPERVISOR_update_va_mapping (int ,int ,int ) ;
 int __pte_ma (int ) ;
 int fix_to_virt (int ) ;
 int irqs_disabled () ;
 void* mfn_to_pfn (void*) ;
 int xen_dummy_shared_info ;
 TYPE_3__* xen_start_info ;

void xen_pre_suspend(void)
{
 xen_start_info->store_mfn = mfn_to_pfn(xen_start_info->store_mfn);
 xen_start_info->console.domU.mfn =
  mfn_to_pfn(xen_start_info->console.domU.mfn);

 BUG_ON(!irqs_disabled());

 HYPERVISOR_shared_info = &xen_dummy_shared_info;
 if (HYPERVISOR_update_va_mapping(fix_to_virt(FIX_PARAVIRT_BOOTMAP),
      __pte_ma(0), 0))
  BUG();
}
