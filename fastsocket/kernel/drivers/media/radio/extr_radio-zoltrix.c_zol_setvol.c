
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int curvol; int lock; scalar_t__ io; scalar_t__ muted; } ;


 int inb (scalar_t__) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int zol_setvol(struct zoltrix *zol, int vol)
{
 zol->curvol = vol;
 if (zol->muted)
  return 0;

 mutex_lock(&zol->lock);
 if (vol == 0) {
  outb(0, zol->io);
  outb(0, zol->io);
  inb(zol->io + 3);
  mutex_unlock(&zol->lock);
  return 0;
 }

 outb(zol->curvol-1, zol->io);
 msleep(10);
 inb(zol->io + 2);
 mutex_unlock(&zol->lock);
 return 0;
}
