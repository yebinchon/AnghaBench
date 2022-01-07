
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_gpio_scl; int ipath_gpio_sda; int ipath_extctrl; int ipath_gpio_lock; TYPE_1__* ipath_kregs; } ;
typedef enum i2c_type { ____Placeholder_i2c_type } i2c_type ;
typedef enum i2c_state { ____Placeholder_i2c_state } i2c_state ;
struct TYPE_2__ {int kr_extstatus; int kr_extctrl; } ;


 int i2c_line_high ;
 int i2c_line_low ;
 int i2c_line_scl ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int i2c_gpio_get(struct ipath_devdata *dd,
   enum i2c_type line,
   enum i2c_state *curr_statep)
{
 u64 read_val, mask;
 int ret;
 unsigned long flags = 0;


 if (curr_statep == ((void*)0)) {
  ret = 1;
  goto bail;
 }


 if (line == i2c_line_scl)
  mask = dd->ipath_gpio_scl;
 else
  mask = dd->ipath_gpio_sda;

 spin_lock_irqsave(&dd->ipath_gpio_lock, flags);
 dd->ipath_extctrl &= ~mask;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_extctrl, dd->ipath_extctrl);




 read_val = ipath_read_kreg64(dd, dd->ipath_kregs->kr_extstatus);
 spin_unlock_irqrestore(&dd->ipath_gpio_lock, flags);

 if (read_val & mask)
  *curr_statep = i2c_line_high;
 else
  *curr_statep = i2c_line_low;

 ret = 0;

bail:
 return ret;
}
