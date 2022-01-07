
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3305_state {int dummy; } ;


 int LGDT3305_GEN_CTRL_3 ;
 int lg_dbg (char*) ;
 scalar_t__ lg_fail (int) ;
 int lgdt3305_set_reg_bit (struct lgdt3305_state*,int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int lgdt3305_soft_reset(struct lgdt3305_state *state)
{
 int ret;

 lg_dbg("\n");

 ret = lgdt3305_set_reg_bit(state, LGDT3305_GEN_CTRL_3, 0, 0);
 if (lg_fail(ret))
  goto fail;

 msleep(20);
 ret = lgdt3305_set_reg_bit(state, LGDT3305_GEN_CTRL_3, 0, 1);
fail:
 return ret;
}
