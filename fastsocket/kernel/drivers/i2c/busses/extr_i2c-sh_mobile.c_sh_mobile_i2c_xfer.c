
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sh_mobile_i2c_data {int sr; int dev; int wait; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int HZ ;
 int ICSR (struct sh_mobile_i2c_data*) ;
 int ICSR_AL ;
 int ICSR_BUSY ;
 int ICSR_TACK ;
 int OP_START ;
 int SW_DONE ;
 int activate_ch (struct sh_mobile_i2c_data*) ;
 int deactivate_ch (struct sh_mobile_i2c_data*) ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*) ;
 struct sh_mobile_i2c_data* i2c_get_adapdata (struct i2c_adapter*) ;
 int i2c_op (struct sh_mobile_i2c_data*,int ,int ) ;
 int ioread8 (int ) ;
 int start_ch (struct sh_mobile_i2c_data*,struct i2c_msg*) ;
 int udelay (int) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int sh_mobile_i2c_xfer(struct i2c_adapter *adapter,
         struct i2c_msg *msgs,
         int num)
{
 struct sh_mobile_i2c_data *pd = i2c_get_adapdata(adapter);
 struct i2c_msg *msg;
 int err = 0;
 u_int8_t val;
 int i, k, retry_count;

 activate_ch(pd);


 for (i = 0; i < num; i++) {
  msg = &msgs[i];

  err = start_ch(pd, msg);
  if (err)
   break;

  i2c_op(pd, OP_START, 0);


  k = wait_event_timeout(pd->wait,
           pd->sr & (ICSR_TACK | SW_DONE),
           5 * HZ);
  if (!k)
   dev_err(pd->dev, "Transfer request timed out\n");

  retry_count = 1000;
again:
  val = ioread8(ICSR(pd));

  dev_dbg(pd->dev, "val 0x%02x pd->sr 0x%02x\n", val, pd->sr);





  if (val & ICSR_BUSY) {
   udelay(10);
   if (retry_count--)
    goto again;

   err = -EIO;
   dev_err(pd->dev, "Polling timed out\n");
   break;
  }


  if ((val | pd->sr) & (ICSR_TACK | ICSR_AL)) {
   err = -EIO;
   break;
  }
 }

 deactivate_ch(pd);

 if (!err)
  err = num;
 return err;
}
