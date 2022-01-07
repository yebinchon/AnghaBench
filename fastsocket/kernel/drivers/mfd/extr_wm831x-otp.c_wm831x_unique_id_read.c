
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;


 scalar_t__ WM831X_UNIQUE_ID_1 ;
 int WM831X_UNIQUE_ID_LEN ;
 int wm831x_reg_read (struct wm831x*,scalar_t__) ;

__attribute__((used)) static int wm831x_unique_id_read(struct wm831x *wm831x, char *id)
{
 int i, val;

 for (i = 0; i < WM831X_UNIQUE_ID_LEN / 2; i++) {
  val = wm831x_reg_read(wm831x, WM831X_UNIQUE_ID_1 + i);
  if (val < 0)
   return val;

  id[i * 2] = (val >> 8) & 0xff;
  id[(i * 2) + 1] = val & 0xff;
 }

 return 0;
}
