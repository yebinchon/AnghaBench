
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipz_qp_handle {int handle; } ;
struct ipz_adapter_handle {int handle; } ;
struct ehca_pfqp {int dummy; } ;


 int H_DISABLE_AND_GETC ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehca_plpar_hcall9 (int ,unsigned long*,int ,int,int ,int ,int ,int ,int ,int ,int ) ;

u64 hipz_h_disable_and_get_wqe(const struct ipz_adapter_handle adapter_handle,
          const struct ipz_qp_handle qp_handle,
          struct ehca_pfqp *pfqp,
          void **log_addr_next_sq_wqe2processed,
          void **log_addr_next_rq_wqe2processed,
          int dis_and_get_function_code)
{
 u64 ret;
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 ret = ehca_plpar_hcall9(H_DISABLE_AND_GETC, outs,
    adapter_handle.handle,
    dis_and_get_function_code,
    qp_handle.handle,
    0, 0, 0, 0, 0, 0);
 if (log_addr_next_sq_wqe2processed)
  *log_addr_next_sq_wqe2processed = (void *)outs[0];
 if (log_addr_next_rq_wqe2processed)
  *log_addr_next_rq_wqe2processed = (void *)outs[1];

 return ret;
}
