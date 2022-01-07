
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int io_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm831x_read (struct wm831x*,unsigned short,int,unsigned short*) ;

int wm831x_reg_read(struct wm831x *wm831x, unsigned short reg)
{
 unsigned short val;
 int ret;

 mutex_lock(&wm831x->io_lock);

 ret = wm831x_read(wm831x, reg, 2, &val);

 mutex_unlock(&wm831x->io_lock);

 if (ret < 0)
  return ret;
 else
  return val;
}
