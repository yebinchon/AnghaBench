
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ipz_adapter_handle {int handle; } ;
struct hipz_query_port {int dummy; } ;


 int EHCA_PAGESIZE ;
 int H_PARAMETER ;
 int H_QUERY_PORT ;
 int ehca_debug_level ;
 int ehca_dmp (struct hipz_query_port*,int,char*) ;
 int ehca_gen_err (char*) ;
 int ehca_plpar_hcall_norets (int ,int ,int const,int,int ,int ,int ,int ) ;
 int virt_to_abs (struct hipz_query_port*) ;

u64 hipz_h_query_port(const struct ipz_adapter_handle adapter_handle,
        const u8 port_id,
        struct hipz_query_port *query_port_response_block)
{
 u64 ret;
 u64 r_cb = virt_to_abs(query_port_response_block);

 if (r_cb & (EHCA_PAGESIZE-1)) {
  ehca_gen_err("response block not page aligned");
  return H_PARAMETER;
 }

 ret = ehca_plpar_hcall_norets(H_QUERY_PORT,
          adapter_handle.handle,
          port_id,
          r_cb,
          0, 0, 0, 0);

 if (ehca_debug_level >= 2)
  ehca_dmp(query_port_response_block, 64, "response_block");

 return ret;
}
