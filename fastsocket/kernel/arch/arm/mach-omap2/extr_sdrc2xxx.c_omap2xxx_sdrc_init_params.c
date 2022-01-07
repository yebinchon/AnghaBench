
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int m_type; int base_cs; int fast_dll_ctrl; int slow_dll_ctrl; int dll_mode; } ;


 int M_DDR ;
 int M_LOCK ;
 int M_LOCK_CTRL ;
 int M_UNLOCK ;
 int SDRC_DLLA_CTRL ;
 int SDRC_DLLA_STATUS ;
 int SDRC_DLLB_CTRL ;
 int SDRC_DLLB_STATUS ;
 int SDRC_MR_0 ;
 scalar_t__ cpu_is_omap2422 () ;
 TYPE_1__ mem_timings ;
 int omap2_sram_ddr_init (int*,int,int,int) ;
 int sdrc_read_reg (int ) ;

void omap2xxx_sdrc_init_params(u32 force_lock_to_unlock_mode)
{
 unsigned long dll_cnt;
 u32 fast_dll = 0;


 mem_timings.m_type = !((sdrc_read_reg(SDRC_MR_0) & 0x3) == 0x1);




 if (cpu_is_omap2422())
  mem_timings.base_cs = 1;
 else
  mem_timings.base_cs = 0;

 if (mem_timings.m_type != M_DDR)
  return;


 if (((mem_timings.fast_dll_ctrl & (1 << 2)) == M_LOCK_CTRL))
  mem_timings.dll_mode = M_UNLOCK;
 else
  mem_timings.dll_mode = M_LOCK;

 if (mem_timings.base_cs == 0) {
  fast_dll = sdrc_read_reg(SDRC_DLLA_CTRL);
  dll_cnt = sdrc_read_reg(SDRC_DLLA_STATUS) & 0xff00;
 } else {
  fast_dll = sdrc_read_reg(SDRC_DLLB_CTRL);
  dll_cnt = sdrc_read_reg(SDRC_DLLB_STATUS) & 0xff00;
 }
 if (force_lock_to_unlock_mode) {
  fast_dll &= ~0xff00;
  fast_dll |= dll_cnt;
 }

 mem_timings.fast_dll_ctrl = (fast_dll | (3 << 8));


 omap2_sram_ddr_init(&mem_timings.slow_dll_ctrl,
       mem_timings.fast_dll_ctrl,
       mem_timings.base_cs,
       force_lock_to_unlock_mode);
 mem_timings.slow_dll_ctrl &= 0xff00;


 mem_timings.slow_dll_ctrl |=
  ((mem_timings.fast_dll_ctrl & 0xF) | (1 << 2));


 mem_timings.slow_dll_ctrl |= ((1 << 1) | (3 << 8));
}
