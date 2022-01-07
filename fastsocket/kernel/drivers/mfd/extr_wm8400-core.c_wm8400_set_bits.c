
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wm8400 {int io_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wm8400_read (struct wm8400*,int ,int,int*) ;
 int wm8400_write (struct wm8400*,int ,int,int*) ;

int wm8400_set_bits(struct wm8400 *wm8400, u8 reg, u16 mask, u16 val)
{
 u16 tmp;
 int ret;

 mutex_lock(&wm8400->io_lock);

 ret = wm8400_read(wm8400, reg, 1, &tmp);
 tmp = (tmp & ~mask) | val;
 if (ret == 0)
  ret = wm8400_write(wm8400, reg, 1, &tmp);

 mutex_unlock(&wm8400->io_lock);

 return ret;
}
