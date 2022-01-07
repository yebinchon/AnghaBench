
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ipath_devdata {int dummy; } ;


 int i2c_gpio_set (struct ipath_devdata*,int ,int ) ;
 int i2c_line_high ;
 int i2c_line_low ;
 int i2c_line_scl ;
 int i2c_wait_for_writes (struct ipath_devdata*) ;
 int udelay (int) ;

__attribute__((used)) static void scl_out(struct ipath_devdata *dd, u8 bit)
{
 udelay(1);
 i2c_gpio_set(dd, i2c_line_scl, bit ? i2c_line_high : i2c_line_low);

 i2c_wait_for_writes(dd);
}
