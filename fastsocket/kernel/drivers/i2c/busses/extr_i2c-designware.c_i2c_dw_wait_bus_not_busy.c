
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int dev; scalar_t__ base; } ;


 scalar_t__ DW_IC_STATUS ;
 int DW_IC_STATUS_ACTIVITY ;
 int ETIMEDOUT ;
 int TIMEOUT ;
 int dev_warn (int ,char*) ;
 int mdelay (int) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int i2c_dw_wait_bus_not_busy(struct dw_i2c_dev *dev)
{
 int timeout = TIMEOUT;

 while (readb(dev->base + DW_IC_STATUS) & DW_IC_STATUS_ACTIVITY) {
  if (timeout <= 0) {
   dev_warn(dev->dev, "timeout waiting for bus ready\n");
   return -ETIMEDOUT;
  }
  timeout--;
  mdelay(1);
 }

 return 0;
}
