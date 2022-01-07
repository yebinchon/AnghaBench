
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400ms {int dummy; } ;


 int I2400MS_INTR_CLEAR_ADDR ;
 int I2400MS_INTR_STATUS_ADDR ;
 int d_fnend (int,struct device*,char*,struct i2400ms*) ;
 int d_fnstart (int,struct device*,char*,struct i2400ms*) ;
 int dev_err (struct device*,char*,...) ;
 int i2400ms_rx (struct i2400ms*) ;
 struct i2400ms* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_readb (struct sdio_func*,int ,int*) ;
 int sdio_writeb (struct sdio_func*,int,int ,int*) ;

__attribute__((used)) static
void i2400ms_irq(struct sdio_func *func)
{
 int ret;
 struct i2400ms *i2400ms = sdio_get_drvdata(func);
 struct device *dev = &func->dev;
 int val;

 d_fnstart(6, dev, "(i2400ms %p)\n", i2400ms);
 val = sdio_readb(func, I2400MS_INTR_STATUS_ADDR, &ret);
 if (ret < 0) {
  dev_err(dev, "RX: Can't read interrupt status: %d\n", ret);
  goto error_no_irq;
 }
 if (!val) {
  dev_err(dev, "RX: BUG? got IRQ but no interrupt ready?\n");
  goto error_no_irq;
 }
 sdio_writeb(func, 1, I2400MS_INTR_CLEAR_ADDR, &ret);
 i2400ms_rx(i2400ms);
error_no_irq:
 d_fnend(6, dev, "(i2400ms %p) = void\n", i2400ms);
 return;
}
