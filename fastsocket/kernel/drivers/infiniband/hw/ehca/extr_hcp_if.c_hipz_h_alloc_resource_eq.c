
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct ipz_eq_handle {unsigned long handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct ehca_pfeq {int dummy; } ;


 int H_ALLOC_RESOURCE ;
 unsigned long long H_NOT_ENOUGH_RESOURCES ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_gen_err (char*,unsigned long long) ;
 unsigned long long ehca_plpar_hcall9 (int ,unsigned long*,int ,unsigned long long,int const,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_alloc_resource_eq(const struct ipz_adapter_handle adapter_handle,
        struct ehca_pfeq *pfeq,
        const u32 neq_control,
        const u32 number_of_entries,
        struct ipz_eq_handle *eq_handle,
        u32 *act_nr_of_entries,
        u32 *act_pages,
        u32 *eq_ist)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];
 u64 allocate_controls;


 allocate_controls = 3ULL;


 if (neq_control != 1)
  allocate_controls = (1ULL << (63 - 7)) | allocate_controls;
 else
  allocate_controls = (1ULL << 63) | allocate_controls;

 ret = ehca_plpar_hcall9(H_ALLOC_RESOURCE, outs,
    adapter_handle.handle,
    allocate_controls,
    number_of_entries,
    0, 0, 0, 0, 0, 0);
 eq_handle->handle = outs[0];
 *act_nr_of_entries = (u32)outs[3];
 *act_pages = (u32)outs[4];
 *eq_ist = (u32)outs[5];

 if (ret == H_NOT_ENOUGH_RESOURCES)
  ehca_gen_err("Not enough resource - ret=%lli ", ret);

 return ret;
}
