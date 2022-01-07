
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ipz_pd {int value; } ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {unsigned long handle; } ;
struct ehca_mw_hipzout_parms {scalar_t__ rkey; TYPE_1__ handle; } ;
struct ehca_mw {int dummy; } ;


 int H_ALLOC_RESOURCE ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_plpar_hcall9 (int ,unsigned long*,int ,int,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_alloc_resource_mw(const struct ipz_adapter_handle adapter_handle,
        const struct ehca_mw *mw,
        const struct ipz_pd pd,
        struct ehca_mw_hipzout_parms *outparms)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_ALLOC_RESOURCE, outs,
    adapter_handle.handle,
    6,
    pd.value,
    0, 0, 0, 0, 0, 0);
 outparms->handle.handle = outs[0];
 outparms->rkey = (u32)outs[3];

 return ret;
}
