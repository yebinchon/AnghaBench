
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {unsigned char sr; int wait; TYPE_1__* msg; int pos; int dev; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; int len; } ;


 int I2C_M_RD ;
 int ICSR (struct sh_mobile_i2c_data*) ;
 unsigned char ICSR_AL ;
 unsigned char ICSR_TACK ;
 unsigned char ICSR_WAIT ;
 int IRQ_HANDLED ;
 unsigned char SW_DONE ;
 int dev_dbg (int ,char*,unsigned char,unsigned char,char*,int ,int ) ;
 unsigned char ioread8 (int ) ;
 int iowrite8 (unsigned char,int ) ;
 struct sh_mobile_i2c_data* platform_get_drvdata (struct platform_device*) ;
 int sh_mobile_i2c_isr_rx (struct sh_mobile_i2c_data*) ;
 int sh_mobile_i2c_isr_tx (struct sh_mobile_i2c_data*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t sh_mobile_i2c_isr(int irq, void *dev_id)
{
 struct platform_device *dev = dev_id;
 struct sh_mobile_i2c_data *pd = platform_get_drvdata(dev);
 unsigned char sr;
 int wakeup;

 sr = ioread8(ICSR(pd));
 pd->sr |= sr;

 dev_dbg(pd->dev, "i2c_isr 0x%02x 0x%02x %s %d %d!\n", sr, pd->sr,
        (pd->msg->flags & I2C_M_RD) ? "read" : "write",
        pd->pos, pd->msg->len);

 if (sr & (ICSR_AL | ICSR_TACK)) {

  iowrite8(sr & ~(ICSR_AL | ICSR_TACK), ICSR(pd));
  wakeup = 0;
 } else if (pd->msg->flags & I2C_M_RD)
  wakeup = sh_mobile_i2c_isr_rx(pd);
 else
  wakeup = sh_mobile_i2c_isr_tx(pd);

 if (sr & ICSR_WAIT)
  iowrite8(sr & ~ICSR_WAIT, ICSR(pd));

 if (wakeup) {
  pd->sr |= SW_DONE;
  wake_up(&pd->wait);
 }

 return IRQ_HANDLED;
}
