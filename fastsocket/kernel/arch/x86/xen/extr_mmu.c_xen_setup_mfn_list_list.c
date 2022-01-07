
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_pfn; int pfn_to_mfn_frame_list_list; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 TYPE_2__* HYPERVISOR_shared_info ;
 int p2m_top_mfn_list ;
 int virt_to_mfn (int ) ;
 TYPE_2__ xen_dummy_shared_info ;
 int xen_max_p2m_pfn ;

void xen_setup_mfn_list_list(void)
{
 BUG_ON(HYPERVISOR_shared_info == &xen_dummy_shared_info);

 HYPERVISOR_shared_info->arch.pfn_to_mfn_frame_list_list =
  virt_to_mfn(p2m_top_mfn_list);
 HYPERVISOR_shared_info->arch.max_pfn = xen_max_p2m_pfn;
}
