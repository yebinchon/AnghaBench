
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_cb {int new_speed; int speed; int transceiver_type; } ;
typedef int __u16 ;


 int EIO ;
 int IRDA_ERROR (char*) ;
 int IRDA_WARNING (char*,int) ;
 int MCS_FIR ;
 int MCS_IRINTX ;
 int MCS_MINRXPW_REG ;
 int MCS_MODE_REG ;
 int MCS_RESET ;
 int MCS_RESV_REG ;
 int MCS_SPEED_MASK ;



 int mcs_get_reg (struct mcs_cb*,int ,int*) ;
 int mcs_set_reg (struct mcs_cb*,int ,int) ;
 int mcs_setup_transceiver_agilent (struct mcs_cb*) ;
 int mcs_setup_transceiver_sharp (struct mcs_cb*) ;
 int mcs_setup_transceiver_vishay (struct mcs_cb*) ;
 int* mcs_speed_set ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mcs_speed_change(struct mcs_cb *mcs)
{
 int ret = 0;
 int rst = 0;
 int cnt = 0;
 __u16 nspeed;
 __u16 rval;

 nspeed = mcs_speed_set[(mcs->new_speed >> 8) & 0x0f];

 do {
  mcs_get_reg(mcs, MCS_RESV_REG, &rval);
 } while(cnt++ < 100 && (rval & MCS_IRINTX));

 if (cnt > 100) {
  IRDA_ERROR("unable to change speed\n");
  ret = -EIO;
  goto error;
 }

 mcs_get_reg(mcs, MCS_MODE_REG, &rval);


 if (mcs->new_speed <= 115200) {
  rval &= ~MCS_FIR;

  if ((rst = (mcs->speed > 115200)))
   mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);

 } else if (mcs->new_speed <= 1152000) {
  rval &= ~MCS_FIR;

  if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
   mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);

 } else {
  rval |= MCS_FIR;

  if ((rst = (mcs->speed != 4000000)))
   mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);

 }

 rval &= ~MCS_SPEED_MASK;
 rval |= nspeed;

 ret = mcs_set_reg(mcs, MCS_MODE_REG, rval);
 if (unlikely(ret))
  goto error;

 if (rst)
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
   ret = 1;
   IRDA_WARNING("Unknown transceiver type: %d\n",
         mcs->transceiver_type);
  }
 if (unlikely(ret))
  goto error;

 mcs_get_reg(mcs, MCS_MODE_REG, &rval);
 rval &= ~MCS_RESET;
 ret = mcs_set_reg(mcs, MCS_MODE_REG, rval);

 mcs->speed = mcs->new_speed;
 error:
  mcs->new_speed = 0;
  return ret;
}
