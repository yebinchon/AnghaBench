
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct i2c_adapter {int retries; int nr; int dev; struct cami2c* algo_data; } ;
struct cami2c {int status; int flags; struct i2c_msg* msg; int xfer_done; } ;


 int EBUSY ;
 int EIO ;
 int EREMOTEIO ;
 int I2CFIER ;
 int I2CMCR ;
 int I2CMIER ;
 int I2CMSR ;
 int I2CSAR ;
 int I2CSCR ;
 int I2CSSR ;
 int I2C_M_RD ;
 int IDF_STOP ;
 int IDS_ARBLOST ;
 int IDS_NACK ;
 int OUT32 (struct cami2c*,int ,int ) ;
 int dev_err (int *,char*,int ) ;
 int init_completion (int *) ;
 int mdelay (int) ;
 scalar_t__ sh7760_i2c_busy_check (struct cami2c*) ;
 int sh7760_i2c_mrecv (struct cami2c*) ;
 int sh7760_i2c_msend (struct cami2c*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int sh7760_i2c_master_xfer(struct i2c_adapter *adap,
      struct i2c_msg *msgs,
      int num)
{
 struct cami2c *id = adap->algo_data;
 int i, retr;

 if (sh7760_i2c_busy_check(id)) {
  dev_err(&adap->dev, "sh7760-i2c%d: bus busy!\n", adap->nr);
  return -EBUSY;
 }

 i = 0;
 while (i < num) {
  retr = adap->retries;
retry:
  id->flags = ((i == (num-1)) ? IDF_STOP : 0);
  id->status = 0;
  id->msg = msgs;
  init_completion(&id->xfer_done);

  if (msgs->flags & I2C_M_RD)
   sh7760_i2c_mrecv(id);
  else
   sh7760_i2c_msend(id);

  wait_for_completion(&id->xfer_done);

  if (id->status == 0) {
   num = -EIO;
   break;
  }

  if (id->status & IDS_NACK) {

   mdelay(1);
   num = -EREMOTEIO;
   break;
  }

  if (id->status & IDS_ARBLOST) {
   if (retr--) {
    mdelay(2);
    goto retry;
   }
   num = -EREMOTEIO;
   break;
  }

  msgs++;
  i++;
 }

 id->msg = ((void*)0);
 id->flags = 0;
 id->status = 0;

 OUT32(id, I2CMCR, 0);
 OUT32(id, I2CMSR, 0);
 OUT32(id, I2CMIER, 0);
 OUT32(id, I2CFIER, 0);





 OUT32(id, I2CSCR, 0);
 OUT32(id, I2CSAR, 0);
 OUT32(id, I2CSSR, 0);

 return num;
}
