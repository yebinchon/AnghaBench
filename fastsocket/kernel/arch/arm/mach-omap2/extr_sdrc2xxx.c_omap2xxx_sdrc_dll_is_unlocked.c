
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SDRC_DLLA_CTRL ;
 int sdrc_read_reg (int ) ;

u32 omap2xxx_sdrc_dll_is_unlocked(void)
{

 u32 dll_state = sdrc_read_reg(SDRC_DLLA_CTRL);

 if ((dll_state & (1 << 2)) == (1 << 2))
  return 1;
 else
  return 0;
}
