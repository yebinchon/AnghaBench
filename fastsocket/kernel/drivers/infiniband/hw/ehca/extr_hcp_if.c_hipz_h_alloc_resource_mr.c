
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef void* u32 ;
struct ipz_pd {int value; } ;
struct ipz_adapter_handle {int handle; } ;
struct TYPE_2__ {unsigned long handle; } ;
struct ehca_mr_hipzout_parms {void* rkey; void* lkey; TYPE_1__ handle; } ;
struct ehca_mr {int dummy; } ;


 int H_ALLOC_RESOURCE ;
 int PLPAR_HCALL9_BUFSIZE ;
 unsigned long long ehca_plpar_hcall9 (int ,unsigned long*,int ,int,unsigned long long const,unsigned long long const,unsigned long long,int ,int ,int ,int ) ;

u64 hipz_h_alloc_resource_mr(const struct ipz_adapter_handle adapter_handle,
        const struct ehca_mr *mr,
        const u64 vaddr,
        const u64 length,
        const u32 access_ctrl,
        const struct ipz_pd pd,
        struct ehca_mr_hipzout_parms *outparms)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_ALLOC_RESOURCE, outs,
    adapter_handle.handle,
    5,
    vaddr,
    length,
    (((u64)access_ctrl) << 32ULL),
    pd.value,
    0, 0, 0);
 outparms->handle.handle = outs[0];
 outparms->lkey = (u32)outs[2];
 outparms->rkey = (u32)outs[3];

 return ret;
}
