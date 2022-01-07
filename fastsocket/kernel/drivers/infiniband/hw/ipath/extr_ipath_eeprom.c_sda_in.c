
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct ipath_devdata {int dummy; } ;
typedef enum i2c_state { ____Placeholder_i2c_state } i2c_state ;


 scalar_t__ i2c_gpio_get (struct ipath_devdata*,int ,int*) ;
 int i2c_line_high ;
 int i2c_line_sda ;
 int i2c_wait_for_writes (struct ipath_devdata*) ;
 int ipath_dbg (char*) ;

__attribute__((used)) static u8 sda_in(struct ipath_devdata *dd, int wait)
{
 enum i2c_state bit;

 if (i2c_gpio_get(dd, i2c_line_sda, &bit))
  ipath_dbg("get bit failed!\n");

 if (wait)
  i2c_wait_for_writes(dd);

 return bit == i2c_line_high ? 1U : 0;
}
