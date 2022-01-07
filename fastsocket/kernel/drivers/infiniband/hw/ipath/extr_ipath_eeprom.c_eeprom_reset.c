
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct ipath_devdata {int ipath_gpio_lock; TYPE_1__* ipath_kregs; void* ipath_extctrl; void* ipath_gpio_out; } ;
struct TYPE_2__ {int kr_gpio_out; int kr_extctrl; } ;


 int VERBOSE ;
 int i2c_line_high ;
 int i2c_line_low ;
 int ipath_cdbg (int ,char*,unsigned long long) ;
 void* ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int scl_out (struct ipath_devdata*,int ) ;
 scalar_t__ sda_in (struct ipath_devdata*,int ) ;
 int sda_out (struct ipath_devdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int eeprom_reset(struct ipath_devdata *dd)
{
 int clock_cycles_left = 9;
 u64 *gpioval = &dd->ipath_gpio_out;
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&dd->ipath_gpio_lock, flags);

 dd->ipath_extctrl = ipath_read_kreg64(dd, dd->ipath_kregs->kr_extctrl);
 *gpioval = ipath_read_kreg64(dd, dd->ipath_kregs->kr_gpio_out);
 spin_unlock_irqrestore(&dd->ipath_gpio_lock, flags);

 ipath_cdbg(VERBOSE, "Resetting i2c eeprom; initial gpioout reg "
     "is %llx\n", (unsigned long long) *gpioval);






 scl_out(dd, i2c_line_low);
 sda_out(dd, i2c_line_high);


 while (clock_cycles_left--) {
  scl_out(dd, i2c_line_high);


  if (sda_in(dd, 0)) {
   sda_out(dd, i2c_line_low);
   scl_out(dd, i2c_line_low);

   scl_out(dd, i2c_line_high);
   sda_out(dd, i2c_line_high);
   ret = 0;
   goto bail;
  }

  scl_out(dd, i2c_line_low);
 }

 ret = 1;

bail:
 return ret;
}
