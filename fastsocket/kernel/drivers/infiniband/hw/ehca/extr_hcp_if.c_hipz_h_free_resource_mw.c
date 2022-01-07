
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_mw {TYPE_1__ ipz_mw_handle; } ;


 int H_FREE_RESOURCE ;
 int ehca_plpar_hcall_norets (int ,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_free_resource_mw(const struct ipz_adapter_handle adapter_handle,
       const struct ehca_mw *mw)
{
 return ehca_plpar_hcall_norets(H_FREE_RESOURCE,
           adapter_handle.handle,
           mw->ipz_mw_handle.handle,
           0, 0, 0, 0, 0);
}
