
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 int i2c_line_high ;
 int i2c_line_low ;
 int scl_out (struct ipath_devdata*,int ) ;
 int sda_in (struct ipath_devdata*,int ) ;

__attribute__((used)) static int rd_byte(struct ipath_devdata *dd)
{
 int bit_cntr, data;

 data = 0;

 for (bit_cntr = 7; bit_cntr >= 0; --bit_cntr) {
  data <<= 1;
  scl_out(dd, i2c_line_high);
  data |= sda_in(dd, 0);
  scl_out(dd, i2c_line_low);
 }
 return data;
}
