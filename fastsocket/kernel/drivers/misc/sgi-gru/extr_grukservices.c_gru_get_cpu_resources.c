
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_blade_state {void* kernel_dsr; void* kernel_cb; } ;


 int BUG_ON (int) ;
 int GRU_HANDLE_STRIDE ;
 int GRU_NUM_KERNEL_DSR_BYTES ;
 struct gru_blade_state* gru_lock_kernel_context (int) ;
 int preempt_disable () ;
 int uv_blade_processor_id () ;

__attribute__((used)) static int gru_get_cpu_resources(int dsr_bytes, void **cb, void **dsr)
{
 struct gru_blade_state *bs;
 int lcpu;

 BUG_ON(dsr_bytes > GRU_NUM_KERNEL_DSR_BYTES);
 preempt_disable();
 bs = gru_lock_kernel_context(-1);
 lcpu = uv_blade_processor_id();
 *cb = bs->kernel_cb + lcpu * GRU_HANDLE_STRIDE;
 *dsr = bs->kernel_dsr + lcpu * GRU_NUM_KERNEL_DSR_BYTES;
 return 0;
}
