
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u16 ;
struct wm831x {int io_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm831x_read (struct wm831x*,unsigned short,int,unsigned short*) ;
 int wm831x_write (struct wm831x*,unsigned short,int,unsigned short*) ;

int wm831x_set_bits(struct wm831x *wm831x, unsigned short reg,
      unsigned short mask, unsigned short val)
{
 int ret;
 u16 r;

 mutex_lock(&wm831x->io_lock);

 ret = wm831x_read(wm831x, reg, 2, &r);
 if (ret < 0)
  goto out;

 r &= ~mask;
 r |= val;

 ret = wm831x_write(wm831x, reg, 2, &r);

out:
 mutex_unlock(&wm831x->io_lock);

 return ret;
}
