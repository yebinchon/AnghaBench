
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int extctrl; int gpio_out; int gpio_lock; } ;


 int EXTCtrl ;
 int EXTStatus ;
 int GPIOIn ;
 int GPIOOe ;
 int SYM_FIELD (int,int ,int ) ;
 int SYM_LSB (int ,int ) ;
 int kr_extctrl ;
 int kr_extstatus ;
 int kr_gpio_out ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gpio_7322_mod(struct qib_devdata *dd, u32 out, u32 dir, u32 mask)
{
 u64 read_val, new_out;
 unsigned long flags;

 if (mask) {

  dir &= mask;
  out &= mask;
  spin_lock_irqsave(&dd->cspec->gpio_lock, flags);
  dd->cspec->extctrl &= ~((u64)mask << SYM_LSB(EXTCtrl, GPIOOe));
  dd->cspec->extctrl |= ((u64) dir << SYM_LSB(EXTCtrl, GPIOOe));
  new_out = (dd->cspec->gpio_out & ~mask) | out;

  qib_write_kreg(dd, kr_extctrl, dd->cspec->extctrl);
  qib_write_kreg(dd, kr_gpio_out, new_out);
  dd->cspec->gpio_out = new_out;
  spin_unlock_irqrestore(&dd->cspec->gpio_lock, flags);
 }
 read_val = qib_read_kreg64(dd, kr_extstatus);
 return SYM_FIELD(read_val, EXTStatus, GPIOIn);
}
