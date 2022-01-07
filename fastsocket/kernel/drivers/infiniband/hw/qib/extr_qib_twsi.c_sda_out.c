
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned long u32 ;
struct qib_devdata {unsigned long gpio_sda_num; int (* f_gpio_mod ) (struct qib_devdata*,int ,unsigned long,unsigned long) ;} ;


 int i2c_wait_for_writes (struct qib_devdata*) ;
 int stub1 (struct qib_devdata*,int ,unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void sda_out(struct qib_devdata *dd, u8 bit)
{
 u32 mask;

 mask = 1UL << dd->gpio_sda_num;


 dd->f_gpio_mod(dd, 0, bit ? 0 : mask, mask);

 i2c_wait_for_writes(dd);
 udelay(2);
}
