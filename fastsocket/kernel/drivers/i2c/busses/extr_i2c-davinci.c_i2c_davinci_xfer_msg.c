
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct i2c_msg {scalar_t__ len; int addr; int flags; int buf; } ;
struct i2c_adapter {int dummy; } ;
struct davinci_i2c_platform_data {scalar_t__ bus_delay; } ;
struct TYPE_3__ {int timeout; } ;
struct davinci_i2c_dev {int buf_len; int cmd_err; int terminate; TYPE_2__* dev; TYPE_1__ adapter; int cmd_complete; int buf; } ;
struct TYPE_4__ {struct davinci_i2c_platform_data* platform_data; } ;


 int DAVINCI_I2C_CNT_REG ;
 int DAVINCI_I2C_IMR_REG ;
 int DAVINCI_I2C_IMR_RRDY ;
 int DAVINCI_I2C_IMR_XRDY ;
 int DAVINCI_I2C_MDR_IRS ;
 int DAVINCI_I2C_MDR_MST ;
 int DAVINCI_I2C_MDR_REG ;
 int DAVINCI_I2C_MDR_STP ;
 int DAVINCI_I2C_MDR_STT ;
 int DAVINCI_I2C_MDR_TRX ;
 int DAVINCI_I2C_MDR_XA ;
 int DAVINCI_I2C_SAR_REG ;
 int DAVINCI_I2C_STR_AL ;
 int DAVINCI_I2C_STR_NACK ;
 int EINVAL ;
 int EIO ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int I2C_M_IGNORE_NAK ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 int INIT_COMPLETION (int ) ;
 int MOD_REG_BIT (int,int,int) ;
 struct davinci_i2c_platform_data davinci_i2c_platform_data_default ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int i2c_davinci_init (struct davinci_i2c_dev*) ;
 struct davinci_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 scalar_t__ likely (int) ;
 int udelay (scalar_t__) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;
 int wmb () ;

__attribute__((used)) static int
i2c_davinci_xfer_msg(struct i2c_adapter *adap, struct i2c_msg *msg, int stop)
{
 struct davinci_i2c_dev *dev = i2c_get_adapdata(adap);
 struct davinci_i2c_platform_data *pdata = dev->dev->platform_data;
 u32 flag;
 u16 w;
 int r;

 if (msg->len == 0)
  return -EINVAL;

 if (!pdata)
  pdata = &davinci_i2c_platform_data_default;

 if (pdata->bus_delay)
  udelay(pdata->bus_delay);


 davinci_i2c_write_reg(dev, DAVINCI_I2C_SAR_REG, msg->addr);

 dev->buf = msg->buf;
 dev->buf_len = msg->len;

 davinci_i2c_write_reg(dev, DAVINCI_I2C_CNT_REG, dev->buf_len);

 INIT_COMPLETION(dev->cmd_complete);
 dev->cmd_err = 0;



 flag = DAVINCI_I2C_MDR_IRS | DAVINCI_I2C_MDR_MST | DAVINCI_I2C_MDR_STT;


 if (msg->flags & I2C_M_TEN)
  flag |= DAVINCI_I2C_MDR_XA;
 if (!(msg->flags & I2C_M_RD))
  flag |= DAVINCI_I2C_MDR_TRX;
 if (stop)
  flag |= DAVINCI_I2C_MDR_STP;


 w = davinci_i2c_read_reg(dev, DAVINCI_I2C_IMR_REG);
 if (msg->flags & I2C_M_RD)
  MOD_REG_BIT(w, DAVINCI_I2C_IMR_RRDY, 1);
 else
  MOD_REG_BIT(w, DAVINCI_I2C_IMR_XRDY, 1);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_IMR_REG, w);

 dev->terminate = 0;

 davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, flag);

 r = wait_for_completion_interruptible_timeout(&dev->cmd_complete,
            dev->adapter.timeout);
 if (r == 0) {
  dev_err(dev->dev, "controller timed out\n");
  i2c_davinci_init(dev);
  dev->buf_len = 0;
  return -ETIMEDOUT;
 }
 if (dev->buf_len) {




  if (r >= 0) {
   dev_err(dev->dev, "abnormal termination buf_len=%i\n",
    dev->buf_len);
   r = -EREMOTEIO;
  }
  dev->terminate = 1;
  wmb();
  dev->buf_len = 0;
 }
 if (r < 0)
  return r;


 if (likely(!dev->cmd_err))
  return msg->len;


 if (dev->cmd_err & DAVINCI_I2C_STR_AL) {
  i2c_davinci_init(dev);
  return -EIO;
 }

 if (dev->cmd_err & DAVINCI_I2C_STR_NACK) {
  if (msg->flags & I2C_M_IGNORE_NAK)
   return msg->len;
  if (stop) {
   w = davinci_i2c_read_reg(dev, DAVINCI_I2C_MDR_REG);
   MOD_REG_BIT(w, DAVINCI_I2C_MDR_STP, 1);
   davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, w);
  }
  return -EREMOTEIO;
 }
 return -EIO;
}
