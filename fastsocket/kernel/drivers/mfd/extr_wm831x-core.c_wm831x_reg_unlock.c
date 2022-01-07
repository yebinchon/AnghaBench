
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int io_lock; scalar_t__ locked; int dev; } ;


 int WARN_ON (int) ;
 int WM831X_SECURITY_KEY ;
 int dev_vdbg (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm831x_reg_write (struct wm831x*,int ,int) ;

int wm831x_reg_unlock(struct wm831x *wm831x)
{
 int ret;


 ret = wm831x_reg_write(wm831x, WM831X_SECURITY_KEY, 0x9716);
 if (ret == 0) {
  dev_vdbg(wm831x->dev, "Registers unlocked\n");

  mutex_lock(&wm831x->io_lock);
  WARN_ON(!wm831x->locked);
  wm831x->locked = 0;
  mutex_unlock(&wm831x->io_lock);
 }

 return ret;
}
