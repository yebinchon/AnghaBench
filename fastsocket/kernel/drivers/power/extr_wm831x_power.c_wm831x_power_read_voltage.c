
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct wm831x {int dummy; } ;
typedef enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;


 int wm831x_auxadc_read_uv (struct wm831x*,int) ;

__attribute__((used)) static int wm831x_power_read_voltage(struct wm831x *wm831x,
         enum wm831x_auxadc src,
         union power_supply_propval *val)
{
 int ret;

 ret = wm831x_auxadc_read_uv(wm831x, src);
 if (ret >= 0)
  val->intval = ret;

 return ret;
}
