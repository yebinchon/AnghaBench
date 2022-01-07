
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_pair_t {int dummy; } ;
struct mxl5007t_state {int dummy; } ;
typedef enum mxl5007t_mode { ____Placeholder_mxl5007t_mode } mxl5007t_mode ;


 int mdelay (int) ;
 struct reg_pair_t* mxl5007t_calc_init_regs (struct mxl5007t_state*,int) ;
 int mxl5007t_soft_reset (struct mxl5007t_state*) ;
 int mxl5007t_write_regs (struct mxl5007t_state*,struct reg_pair_t*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl5007t_tuner_init(struct mxl5007t_state *state,
          enum mxl5007t_mode mode)
{
 struct reg_pair_t *init_regs;
 int ret;

 ret = mxl5007t_soft_reset(state);
 if (mxl_fail(ret))
  goto fail;


 init_regs = mxl5007t_calc_init_regs(state, mode);

 ret = mxl5007t_write_regs(state, init_regs);
 if (mxl_fail(ret))
  goto fail;
 mdelay(1);
fail:
 return ret;
}
