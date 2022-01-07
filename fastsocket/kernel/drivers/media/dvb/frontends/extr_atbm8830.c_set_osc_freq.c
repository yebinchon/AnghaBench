
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct atbm_state {int dummy; } ;


 scalar_t__ REG_OSC_CLK ;
 int atbm8830_write_reg (struct atbm_state*,scalar_t__,int) ;
 int do_div (int,int) ;

__attribute__((used)) static int set_osc_freq(struct atbm_state *priv, u32 freq )
{
 u32 val;
 u64 t;


 t = (u64)0x100000 * freq;
 do_div(t, 30400);
 val = t;

 atbm8830_write_reg(priv, REG_OSC_CLK, val);
 atbm8830_write_reg(priv, REG_OSC_CLK + 1, val >> 8);
 atbm8830_write_reg(priv, REG_OSC_CLK + 2, val >> 16);

 return 0;
}
