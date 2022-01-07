
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400ms {struct sdio_func* func; } ;
typedef int ssize_t ;


 unsigned int I2400MS_INTR_GET_SIZE_ADDR ;
 int d_fnend (int,struct device*,char*,struct i2400ms*,long) ;
 int d_fnstart (int,struct device*,char*,struct i2400ms*) ;
 int d_printf (int,struct device*,char*,long) ;
 int dev_err (struct device*,char*,int,unsigned int,int) ;
 int sdio_readb (struct sdio_func*,unsigned int,int*) ;

ssize_t __i2400ms_rx_get_size(struct i2400ms *i2400ms)
{
 int ret, cnt, val;
 ssize_t rx_size;
 unsigned xfer_size_addr;
 struct sdio_func *func = i2400ms->func;
 struct device *dev = &i2400ms->func->dev;

 d_fnstart(7, dev, "(i2400ms %p)\n", i2400ms);
 xfer_size_addr = I2400MS_INTR_GET_SIZE_ADDR;
 rx_size = 0;
 for (cnt = 0; cnt < 3; cnt++) {
  val = sdio_readb(func, xfer_size_addr + cnt, &ret);
  if (ret < 0) {
   dev_err(dev, "RX: Can't read byte %d of RX size from "
    "0x%08x: %d\n", cnt, xfer_size_addr + cnt, ret);
   rx_size = ret;
   goto error_read;
  }
  rx_size = rx_size << 8 | (val & 0xff);
 }
 d_printf(6, dev, "RX: rx_size is %ld\n", (long) rx_size);
error_read:
 d_fnend(7, dev, "(i2400ms %p) = %ld\n", i2400ms, (long) rx_size);
 return rx_size;
}
