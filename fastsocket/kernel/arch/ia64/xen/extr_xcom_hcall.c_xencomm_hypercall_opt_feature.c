
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_ia64_opt_feature {int dummy; } ;


 long xencomm_arch_hypercall_opt_feature (int ) ;
 int xencomm_map_no_alloc (void*,int) ;

long
xencomm_hypercall_opt_feature(void *arg)
{
 return xencomm_arch_hypercall_opt_feature(
  xencomm_map_no_alloc(arg,
         sizeof(struct xen_ia64_opt_feature)));
}
