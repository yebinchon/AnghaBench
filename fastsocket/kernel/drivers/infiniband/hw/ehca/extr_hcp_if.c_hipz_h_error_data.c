
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipz_adapter_handle {int handle; } ;


 int EHCA_PAGESIZE ;
 int H_ERROR_DATA ;
 int H_PARAMETER ;
 int ehca_gen_err (char*) ;
 int ehca_plpar_hcall_norets (int ,int ,int const,int,int ,int ,int ,int ) ;
 int virt_to_abs (void*) ;

u64 hipz_h_error_data(const struct ipz_adapter_handle adapter_handle,
        const u64 ressource_handle,
        void *rblock,
        unsigned long *byte_count)
{
 u64 r_cb = virt_to_abs(rblock);

 if (r_cb & (EHCA_PAGESIZE-1)) {
  ehca_gen_err("rblock not page aligned.");
  return H_PARAMETER;
 }

 return ehca_plpar_hcall_norets(H_ERROR_DATA,
           adapter_handle.handle,
           ressource_handle,
           r_cb,
           0, 0, 0, 0);
}
