
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int auxadc_lock; int dev; } ;
typedef enum wm831x_auxadc { ____Placeholder_wm831x_auxadc } wm831x_auxadc ;


 int EBUSY ;
 int EINVAL ;
 int WM831X_AUXADC_CONTROL ;
 int WM831X_AUXADC_DATA ;
 int WM831X_AUXADC_SOURCE ;
 int WM831X_AUX_CAL ;
 int WM831X_AUX_CVT_ENA ;
 int WM831X_AUX_DATA_MASK ;
 int WM831X_AUX_DATA_SRC_MASK ;
 int WM831X_AUX_DATA_SRC_SHIFT ;
 int WM831X_AUX_ENA ;
 int dev_err (int ,char*,...) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_reg_write (struct wm831x*,int ,int) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

int wm831x_auxadc_read(struct wm831x *wm831x, enum wm831x_auxadc input)
{
 int tries = 10;
 int ret, src;

 mutex_lock(&wm831x->auxadc_lock);

 ret = wm831x_set_bits(wm831x, WM831X_AUXADC_CONTROL,
         WM831X_AUX_ENA, WM831X_AUX_ENA);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to enable AUXADC: %d\n", ret);
  goto out;
 }


 src = input;
 ret = wm831x_reg_write(wm831x, WM831X_AUXADC_SOURCE,
          1 << src);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to set AUXADC source: %d\n", ret);
  goto out;
 }

 ret = wm831x_set_bits(wm831x, WM831X_AUXADC_CONTROL,
         WM831X_AUX_CVT_ENA, WM831X_AUX_CVT_ENA);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to start AUXADC: %d\n", ret);
  goto disable;
 }

 do {
  msleep(1);

  ret = wm831x_reg_read(wm831x, WM831X_AUXADC_CONTROL);
  if (ret < 0)
   ret = WM831X_AUX_CVT_ENA;
 } while ((ret & WM831X_AUX_CVT_ENA) && --tries);

 if (ret & WM831X_AUX_CVT_ENA) {
  dev_err(wm831x->dev, "Timed out reading AUXADC\n");
  ret = -EBUSY;
  goto disable;
 }

 ret = wm831x_reg_read(wm831x, WM831X_AUXADC_DATA);
 if (ret < 0) {
  dev_err(wm831x->dev, "Failed to read AUXADC data: %d\n", ret);
 } else {
  src = ((ret & WM831X_AUX_DATA_SRC_MASK)
         >> WM831X_AUX_DATA_SRC_SHIFT) - 1;

  if (src == 14)
   src = WM831X_AUX_CAL;

  if (src != input) {
   dev_err(wm831x->dev, "Data from source %d not %d\n",
    src, input);
   ret = -EINVAL;
  } else {
   ret &= WM831X_AUX_DATA_MASK;
  }
 }

disable:
 wm831x_set_bits(wm831x, WM831X_AUXADC_CONTROL, WM831X_AUX_ENA, 0);
out:
 mutex_unlock(&wm831x->auxadc_lock);
 return ret;
}
