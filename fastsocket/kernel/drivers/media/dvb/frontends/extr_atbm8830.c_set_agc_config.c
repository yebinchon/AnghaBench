
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atbm_state {int dummy; } ;


 int REG_AGC_HOLD_LOOP ;
 int REG_AGC_MAX ;
 int REG_AGC_MIN ;
 int atbm8830_write_reg (struct atbm_state*,int ,int ) ;

__attribute__((used)) static int set_agc_config(struct atbm_state *priv,
 u8 min, u8 max, u8 hold_loop)
{

 if (!min && !max)
     return 0;

 atbm8830_write_reg(priv, REG_AGC_MIN, min);
 atbm8830_write_reg(priv, REG_AGC_MAX, max);
 atbm8830_write_reg(priv, REG_AGC_HOLD_LOOP, hold_loop);

 return 0;
}
