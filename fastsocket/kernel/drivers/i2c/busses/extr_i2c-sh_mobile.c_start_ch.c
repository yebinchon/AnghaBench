
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int iccl; int icch; int pos; scalar_t__ sr; struct i2c_msg* msg; int dev; } ;
struct i2c_msg {scalar_t__ len; int flags; } ;


 int EIO ;
 int I2C_M_RD ;
 int ICCH (struct sh_mobile_i2c_data*) ;
 int ICCL (struct sh_mobile_i2c_data*) ;
 int ICCR (struct sh_mobile_i2c_data*) ;
 int ICCR_ICE ;
 int ICIC (struct sh_mobile_i2c_data*) ;
 int ICIC_ALE ;
 int ICIC_DTEE ;
 int ICIC_TACKE ;
 int ICIC_WAITE ;
 int dev_err (int ,char*) ;
 int ioread8 (int ) ;
 int iowrite8 (int,int ) ;

__attribute__((used)) static int start_ch(struct sh_mobile_i2c_data *pd, struct i2c_msg *usr_msg)
{
 if (usr_msg->len == 0 && (usr_msg->flags & I2C_M_RD)) {
  dev_err(pd->dev, "Unsupported zero length i2c read\n");
  return -EIO;
 }


 iowrite8(ioread8(ICCR(pd)) & ~ICCR_ICE, ICCR(pd));


 iowrite8(ioread8(ICCR(pd)) | ICCR_ICE, ICCR(pd));


 iowrite8(pd->iccl, ICCL(pd));
 iowrite8(pd->icch, ICCH(pd));

 pd->msg = usr_msg;
 pd->pos = -1;
 pd->sr = 0;


 iowrite8(ICIC_WAITE | ICIC_ALE | ICIC_TACKE | ICIC_DTEE, ICIC(pd));
 return 0;
}
