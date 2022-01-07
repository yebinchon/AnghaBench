
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_devdata {unsigned long gpio_scl_num; unsigned long gpio_sda_num; int (* f_gpio_mod ) (struct qib_devdata*,int ,int ,int) ;} ;


 int TWSI_BUF_WAIT_USEC ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int scl_out (struct qib_devdata*,int) ;
 int sda_in (struct qib_devdata*,int ) ;
 int sda_out (struct qib_devdata*,int) ;
 int stub1 (struct qib_devdata*,int ,int ,int) ;
 int stub2 (struct qib_devdata*,int ,int ,int) ;
 int udelay (int) ;

int qib_twsi_reset(struct qib_devdata *dd)
{
 int clock_cycles_left = 9;
 int was_high = 0;
 u32 pins, mask;




 mask = (1UL << dd->gpio_scl_num) | (1UL << dd->gpio_sda_num);






 dd->f_gpio_mod(dd, 0, 0, mask);
 while (clock_cycles_left--) {
  scl_out(dd, 0);
  scl_out(dd, 1);

  was_high |= sda_in(dd, 0);
 }

 if (was_high) {





  pins = dd->f_gpio_mod(dd, 0, 0, 0);
  if ((pins & mask) != mask)
   qib_dev_err(dd, "GPIO pins not at rest: %d\n",
        pins & mask);

  udelay(1);
  sda_out(dd, 0);
  udelay(1);

  sda_out(dd, 1);
  udelay(TWSI_BUF_WAIT_USEC);
 }

 return !was_high;
}
