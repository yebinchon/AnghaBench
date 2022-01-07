
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_cb {int speed; int transceiver_type; scalar_t__ receive_mode; scalar_t__ new_speed; scalar_t__ sir_tweak; } ;
typedef int __u16 ;


 int IRDA_ERROR (char*,char*) ;
 int IRDA_WARNING (char*,int) ;
 int MCS_ASK ;
 int MCS_BBTG ;
 int MCS_DRIVER ;
 int MCS_DTD ;
 int MCS_FIR ;
 int MCS_MINRXPW_REG ;
 int MCS_MODE_REG ;
 int MCS_PLLPWDN ;
 int MCS_RESET ;
 int MCS_RXFAST ;
 int MCS_SIPEN ;
 int MCS_SIR16US ;
 int MCS_SPEED_9600 ;
 int MCS_SPEED_MASK ;



 int MCS_XCVR_REG ;
 int mcs_get_reg (struct mcs_cb*,int ,int*) ;
 int mcs_set_reg (struct mcs_cb*,int ,int) ;
 int mcs_setup_transceiver_agilent (struct mcs_cb*) ;
 int mcs_setup_transceiver_sharp (struct mcs_cb*) ;
 int mcs_setup_transceiver_vishay (struct mcs_cb*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int mcs_setup_transceiver(struct mcs_cb *mcs)
{
 int ret = 0;
 __u16 rval;
 char *msg;

 msg = "Basic transceiver setup error.";




 ret = mcs_get_reg(mcs, MCS_MODE_REG, &rval);
 if(unlikely(ret != 2))
  goto error;
 rval |= MCS_DRIVER;
 ret = mcs_set_reg(mcs, MCS_MODE_REG, rval);
 if(unlikely(ret))
  goto error;

 rval = 0;
 ret = mcs_set_reg(mcs, MCS_MINRXPW_REG, rval);
 if(unlikely(ret))
  goto error;

 ret = mcs_get_reg(mcs, MCS_MODE_REG, &rval);
 if(unlikely(ret != 2))
  goto error;

 rval &= ~MCS_FIR;
 if(mcs->sir_tweak)
  rval |= MCS_SIR16US;
 else
  rval &= ~MCS_SIR16US;


 rval &= ~(MCS_BBTG | MCS_ASK);

 rval &= ~MCS_SPEED_MASK;
 rval |= MCS_SPEED_9600;
 mcs->speed = 9600;
 mcs->new_speed = 0;
 rval &= ~MCS_PLLPWDN;




 rval |= MCS_DTD | MCS_SIPEN;

 ret = mcs_set_reg(mcs, MCS_MODE_REG, rval);
 if(unlikely(ret))
  goto error;

 msg = "transceiver model specific setup error.";
 switch (mcs->transceiver_type) {
 case 128:
  ret = mcs_setup_transceiver_vishay(mcs);
  break;

 case 129:
  ret = mcs_setup_transceiver_sharp(mcs);
  break;

 case 130:
  ret = mcs_setup_transceiver_agilent(mcs);
  break;

 default:
  IRDA_WARNING("Unknown transceiver type: %d\n",
        mcs->transceiver_type);
  ret = 1;
 }
 if (unlikely(ret))
  goto error;




 if (mcs->transceiver_type != 129) {

  ret = mcs_get_reg(mcs, MCS_XCVR_REG, &rval);
  if (unlikely(ret != 2))
   goto error;
  if (mcs->receive_mode)
   rval |= MCS_RXFAST;
  else
   rval &= ~MCS_RXFAST;
  ret = mcs_set_reg(mcs, MCS_XCVR_REG, rval);
  if (unlikely(ret))
   goto error;
 }

 msg = "transceiver reset.";

 ret = mcs_get_reg(mcs, MCS_MODE_REG, &rval);
 if (unlikely(ret != 2))
  goto error;


 rval &= ~MCS_RESET;
 ret = mcs_set_reg(mcs, MCS_MODE_REG, rval);
 if (unlikely(ret))
  goto error;
 else
  return ret;

error:
 IRDA_ERROR("%s\n", msg);
 return ret;
}
