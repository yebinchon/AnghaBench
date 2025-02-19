
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3305_state {int dummy; } ;
typedef enum lgdt3305_tp_valid_polarity { ____Placeholder_lgdt3305_tp_valid_polarity } lgdt3305_tp_valid_polarity ;
typedef enum lgdt3305_tp_clock_edge { ____Placeholder_lgdt3305_tp_clock_edge } lgdt3305_tp_clock_edge ;


 int LGDT3305_TP_CTRL_1 ;
 int lg_dbg (char*,int,int) ;
 scalar_t__ lg_fail (int) ;
 int lgdt3305_read_reg (struct lgdt3305_state*,int ,int*) ;
 int lgdt3305_soft_reset (struct lgdt3305_state*) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;

__attribute__((used)) static int lgdt3305_mpeg_mode_polarity(struct lgdt3305_state *state,
           enum lgdt3305_tp_clock_edge edge,
           enum lgdt3305_tp_valid_polarity valid)
{
 u8 val;
 int ret;

 lg_dbg("edge = %d, valid = %d\n", edge, valid);

 ret = lgdt3305_read_reg(state, LGDT3305_TP_CTRL_1, &val);
 if (lg_fail(ret))
  goto fail;

 val &= ~0x09;

 if (edge)
  val |= 0x08;
 if (valid)
  val |= 0x01;

 ret = lgdt3305_write_reg(state, LGDT3305_TP_CTRL_1, val);
 if (lg_fail(ret))
  goto fail;

 ret = lgdt3305_soft_reset(state);
fail:
 return ret;
}
