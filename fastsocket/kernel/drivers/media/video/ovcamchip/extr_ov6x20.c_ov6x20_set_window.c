
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_window {int x; int width; int y; int height; scalar_t__ quarter; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ HWEBASE ;
 scalar_t__ HWSBASE ;
 scalar_t__ VWEBASE ;
 scalar_t__ VWSBASE ;
 int ov6x20_mode_init (struct i2c_client*,struct ovcamchip_window*) ;
 int ov_write (struct i2c_client*,int,scalar_t__) ;

__attribute__((used)) static int ov6x20_set_window(struct i2c_client *c, struct ovcamchip_window *win)
{
 int ret, hwscale, vwscale;

 ret = ov6x20_mode_init(c, win);
 if (ret < 0)
  return ret;

 if (win->quarter) {
  hwscale = 0;
  vwscale = 0;
 } else {
  hwscale = 1;
  vwscale = 1;
 }

 ov_write(c, 0x17, HWSBASE + (win->x >> hwscale));
 ov_write(c, 0x18, HWEBASE + ((win->x + win->width) >> hwscale));
 ov_write(c, 0x19, VWSBASE + (win->y >> vwscale));
 ov_write(c, 0x1a, VWEBASE + ((win->y + win->height) >> vwscale));

 return 0;
}
