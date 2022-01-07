
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shared_info {int dummy; } ;
struct TYPE_2__ {int shared_info; } ;


 int FIX_PARAVIRT_BOOTMAP ;
 struct shared_info* HYPERVISOR_shared_info ;
 int XENFEAT_auto_translated_physmap ;
 scalar_t__ __va (int ) ;
 scalar_t__ fix_to_virt (int ) ;
 int set_fixmap (int ,int ) ;
 int xen_feature (int ) ;
 int xen_setup_mfn_list_list () ;
 int xen_setup_vcpu_info_placement () ;
 TYPE_1__* xen_start_info ;

void xen_setup_shared_info(void)
{
 if (!xen_feature(XENFEAT_auto_translated_physmap)) {
  set_fixmap(FIX_PARAVIRT_BOOTMAP,
      xen_start_info->shared_info);

  HYPERVISOR_shared_info =
   (struct shared_info *)fix_to_virt(FIX_PARAVIRT_BOOTMAP);
 } else
  HYPERVISOR_shared_info =
   (struct shared_info *)__va(xen_start_info->shared_info);



 xen_setup_vcpu_info_placement();


 xen_setup_mfn_list_list();
}
