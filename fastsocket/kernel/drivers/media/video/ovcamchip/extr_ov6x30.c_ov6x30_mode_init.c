
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovcamchip_window {scalar_t__ format; int clockdiv; scalar_t__ quarter; } ;
struct i2c_client {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 scalar_t__ I2C_HW_SMBUS_OV518 ;
 scalar_t__ VIDEO_PALETTE_GREY ;
 int ov_write (struct i2c_client*,int,int ) ;
 int ov_write_mask (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int ov6x30_mode_init(struct i2c_client *c, struct ovcamchip_window *win)
{


 ov_write_mask(c, 0x14, win->quarter?0x20:0x00, 0x20);



 if (win->format == VIDEO_PALETTE_GREY) {
  if (c->adapter->id == I2C_HW_SMBUS_OV518) {

  } else {
   ov_write_mask(c, 0x13, 0x20, 0x20);
  }
 } else {






  if (c->adapter->id == I2C_HW_SMBUS_OV518) {


  } else {
   ov_write_mask(c, 0x13, 0x00, 0x20);
  }
 }



 ov_write(c, 0x11, win->clockdiv);

 return 0;
}
