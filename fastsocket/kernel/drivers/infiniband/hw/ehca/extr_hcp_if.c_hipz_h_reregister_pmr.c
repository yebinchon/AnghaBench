
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef void* u32 ;
struct ipz_pd {unsigned long long value; } ;
struct ipz_adapter_handle {int handle; } ;
struct ehca_mr_hipzout_parms {unsigned long vaddr; void* rkey; void* lkey; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_mr {TYPE_1__ ipz_mr_handle; } ;


 int H_REREGISTER_PMR ;
 int PLPAR_HCALL9_BUFSIZE ;
 unsigned long long ehca_plpar_hcall9 (int ,unsigned long*,int ,int ,unsigned long long const,unsigned long long const,unsigned long long,unsigned long long const,int ,int ,int ) ;

u64 hipz_h_reregister_pmr(const struct ipz_adapter_handle adapter_handle,
     const struct ehca_mr *mr,
     const u64 vaddr_in,
     const u64 length,
     const u32 access_ctrl,
     const struct ipz_pd pd,
     const u64 mr_addr_cb,
     struct ehca_mr_hipzout_parms *outparms)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_REREGISTER_PMR, outs,
    adapter_handle.handle,
    mr->ipz_mr_handle.handle,
    vaddr_in,
    length,

    ((((u64)access_ctrl) << 32ULL) | pd.value),
    mr_addr_cb,
    0, 0, 0);
 outparms->vaddr = outs[1];
 outparms->lkey = (u32)outs[2];
 outparms->rkey = (u32)outs[3];

 return ret;
}
