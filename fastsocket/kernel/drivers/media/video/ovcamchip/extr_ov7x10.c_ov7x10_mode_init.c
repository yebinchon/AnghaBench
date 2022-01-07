
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_window {int quarter; scalar_t__ format; int clockdiv; int width; int height; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ VIDEO_PALETTE_GREY ;
 int ov_write (struct i2c_client*,int,int) ;
 int ov_write_mask (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int ov7x10_mode_init(struct i2c_client *c, struct ovcamchip_window *win)
{
 int qvga = win->quarter;



 ov_write(c, 0x14, qvga?0x24:0x04);



 if (win->format == VIDEO_PALETTE_GREY) {
  ov_write_mask(c, 0x0e, 0x40, 0x40);
  ov_write_mask(c, 0x13, 0x20, 0x20);
 } else {
  ov_write_mask(c, 0x0e, 0x00, 0x40);
  ov_write_mask(c, 0x13, 0x00, 0x20);
 }



 ov_write(c, 0x11, win->clockdiv);



 if (win->width == 640 && win->height == 480)
  ov_write(c, 0x35, 0x9e);
 else
  ov_write(c, 0x35, 0x1e);

 return 0;
}
