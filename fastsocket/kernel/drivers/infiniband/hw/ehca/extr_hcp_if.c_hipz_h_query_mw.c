
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ipz_adapter_handle {int handle; } ;
struct ehca_mw_hipzout_parms {scalar_t__ rkey; } ;
struct TYPE_2__ {int handle; } ;
struct ehca_mw {TYPE_1__ ipz_mw_handle; } ;


 int H_QUERY_MW ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_plpar_hcall9 (int ,unsigned long*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_query_mw(const struct ipz_adapter_handle adapter_handle,
      const struct ehca_mw *mw,
      struct ehca_mw_hipzout_parms *outparms)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_QUERY_MW, outs,
    adapter_handle.handle,
    mw->ipz_mw_handle.handle,
    0, 0, 0, 0, 0, 0, 0);
 outparms->rkey = (u32)outs[3];

 return ret;
}
