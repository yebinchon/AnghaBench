
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 int i2c_line_high ;
 int i2c_line_low ;
 int scl_out (struct ipath_devdata*,int ) ;
 int sda_out (struct ipath_devdata*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void stop_cmd(struct ipath_devdata *dd)
{
 scl_out(dd, i2c_line_low);
 sda_out(dd, i2c_line_low);
 scl_out(dd, i2c_line_high);
 sda_out(dd, i2c_line_high);
 udelay(2);
}
