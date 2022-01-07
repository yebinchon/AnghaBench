
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3305_state {int dummy; } ;
struct lgdt3305_reg {int val; int reg; } ;


 scalar_t__ lg_fail (int) ;
 int lg_reg (char*,int) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int ) ;

__attribute__((used)) static int lgdt3305_write_regs(struct lgdt3305_state *state,
          struct lgdt3305_reg *regs, int len)
{
 int i, ret;

 lg_reg("writing %d registers...\n", len);

 for (i = 0; i < len - 1; i++) {
  ret = lgdt3305_write_reg(state, regs[i].reg, regs[i].val);
  if (lg_fail(ret))
   return ret;
 }
 return 0;
}
