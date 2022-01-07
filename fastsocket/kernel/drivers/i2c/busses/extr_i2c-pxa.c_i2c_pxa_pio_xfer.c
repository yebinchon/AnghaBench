
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int dummy; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int retries; int dev; struct pxa_i2c* algo_data; } ;


 int EREMOTEIO ;
 int I2C_RETRY ;
 int ICR_IUE ;
 int _ICR (struct pxa_i2c*) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ i2c_debug ;
 int i2c_pxa_do_pio_xfer (struct pxa_i2c*,struct i2c_msg*,int) ;
 int i2c_pxa_reset (struct pxa_i2c*) ;
 int i2c_pxa_scream_blue_murder (struct pxa_i2c*,char*) ;
 int i2c_pxa_set_slave (struct pxa_i2c*,int) ;
 int readl (int ) ;
 int udelay (int) ;

__attribute__((used)) static int i2c_pxa_pio_xfer(struct i2c_adapter *adap,
       struct i2c_msg msgs[], int num)
{
 struct pxa_i2c *i2c = adap->algo_data;
 int ret, i;





 if (!(readl(_ICR(i2c)) & ICR_IUE))
  i2c_pxa_reset(i2c);

 for (i = adap->retries; i >= 0; i--) {
  ret = i2c_pxa_do_pio_xfer(i2c, msgs, num);
  if (ret != I2C_RETRY)
   goto out;

  if (i2c_debug)
   dev_dbg(&adap->dev, "Retrying transmission\n");
  udelay(100);
 }
 i2c_pxa_scream_blue_murder(i2c, "exhausted retries");
 ret = -EREMOTEIO;
 out:
 i2c_pxa_set_slave(i2c, ret);
 return ret;
}
