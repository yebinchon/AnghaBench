
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int io_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm831x_read (struct wm831x*,unsigned short,int,int *) ;

int wm831x_bulk_read(struct wm831x *wm831x, unsigned short reg,
       int count, u16 *buf)
{
 int ret;

 mutex_lock(&wm831x->io_lock);

 ret = wm831x_read(wm831x, reg, count * 2, buf);

 mutex_unlock(&wm831x->io_lock);

 return ret;
}
