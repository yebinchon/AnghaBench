
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


 int BUG_ON (int ) ;
 int cpu_online_mask ;
 int cpumask_copy (int *,int ) ;
 void* pfn_to_mfn (void*) ;
 int xen_build_mfn_list_list () ;
 int * xen_cpu_initialized_map ;
 int xen_setup_shared_info () ;
 TYPE_3__* xen_start_info ;
 int xen_vcpu_restore () ;

void xen_post_suspend(int suspend_cancelled)
{
 xen_build_mfn_list_list();

 xen_setup_shared_info();

 if (suspend_cancelled) {
  xen_start_info->store_mfn =
   pfn_to_mfn(xen_start_info->store_mfn);
  xen_start_info->console.domU.mfn =
   pfn_to_mfn(xen_start_info->console.domU.mfn);
 } else {




  xen_vcpu_restore();
 }

}
