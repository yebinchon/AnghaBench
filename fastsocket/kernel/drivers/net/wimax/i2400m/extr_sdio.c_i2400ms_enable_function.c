
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;


 int ENODEV ;
 int ETIME ;
 int HZ ;
 int I2400MS_INIT_SLEEP_INTERVAL ;
 int d_fnend (int,struct device*,char*,struct sdio_func*,int) ;
 int d_fnstart (int,struct device*,char*,struct sdio_func*) ;
 int d_printf (int,struct device*,char*,...) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ get_jiffies_64 () ;
 int ioe_timeout ;
 int msleep (int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 scalar_t__ time_before64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static
int i2400ms_enable_function(struct sdio_func *func)
{
 u64 timeout;
 int err;
 struct device *dev = &func->dev;

 d_fnstart(3, dev, "(func %p)\n", func);



 timeout = get_jiffies_64() + ioe_timeout * HZ;
 err = -ENODEV;
 while (err != 0 && time_before64(get_jiffies_64(), timeout)) {
  sdio_claim_host(func);
  err = sdio_enable_func(func);
  if (0 == err) {
   sdio_release_host(func);
   d_printf(2, dev, "SDIO function enabled\n");
   goto function_enabled;
  }
  d_printf(2, dev, "SDIO function failed to enable: %d\n", err);
  sdio_disable_func(func);
  sdio_release_host(func);
  msleep(I2400MS_INIT_SLEEP_INTERVAL);
 }


 if (err == -ETIME) {
  dev_err(dev, "Can't enable WiMAX function; "
   " has the function been enabled?\n");
  err = -ENODEV;
 }
function_enabled:
 d_fnend(3, dev, "(func %p) = %d\n", func, err);
 return err;
}
