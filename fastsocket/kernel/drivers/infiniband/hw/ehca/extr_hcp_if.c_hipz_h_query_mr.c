
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct ipz_adapter_handle {int handle; } ;
struct ehca_mr_hipzout_parms {unsigned long len; unsigned long vaddr; unsigned long acl; void* rkey; void* lkey; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_mr {TYPE_1__ ipz_mr_handle; } ;


 int H_QUERY_MR ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_plpar_hcall9 (int ,unsigned long*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_query_mr(const struct ipz_adapter_handle adapter_handle,
      const struct ehca_mr *mr,
      struct ehca_mr_hipzout_parms *outparms)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_QUERY_MR, outs,
    adapter_handle.handle,
    mr->ipz_mr_handle.handle,
    0, 0, 0, 0, 0, 0, 0);
 outparms->len = outs[0];
 outparms->vaddr = outs[1];
 outparms->acl = outs[4] >> 32;
 outparms->lkey = (u32)(outs[5] >> 32);
 outparms->rkey = (u32)(outs[5] & (0xffffffff));

 return ret;
}
