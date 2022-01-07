
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_cb {int dummy; } ;
typedef int __u16 ;


 int EIO ;
 int MCS_MODE0 ;
 int MCS_MODE1 ;
 int MCS_STFIR ;
 int MCS_XCVR_CONF ;
 int MCS_XCVR_REG ;
 int mcs_get_reg (struct mcs_cb*,int ,int*) ;
 int mcs_set_reg (struct mcs_cb*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int mcs_setup_transceiver_vishay(struct mcs_cb *mcs)
{
 int ret = 0;
 __u16 rval;


 ret = mcs_get_reg(mcs, MCS_XCVR_REG, &rval);
 if (unlikely(ret != 2)) {
  ret = -EIO;
  goto error;
 }






 rval |= (MCS_MODE0 | MCS_XCVR_CONF);
 rval &= ~MCS_STFIR;
 rval &= ~MCS_MODE1;
 ret = mcs_set_reg(mcs, MCS_XCVR_REG, rval);
 if (unlikely(ret))
  goto error;

 rval &= ~MCS_MODE0;
 ret = mcs_set_reg(mcs, MCS_XCVR_REG, rval);
 if (unlikely(ret))
  goto error;

 rval &= ~MCS_XCVR_CONF;
 ret = mcs_set_reg(mcs, MCS_XCVR_REG, rval);
 if (unlikely(ret))
  goto error;

 ret = 0;
 error:
  return ret;
}
