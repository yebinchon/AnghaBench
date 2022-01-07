
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int curvol; int lock; int io; } ;


 int inb (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static int zol_is_stereo(struct zoltrix *zol)
{
 int x1, x2;

 mutex_lock(&zol->lock);

 outb(0x00, zol->io);
 outb(zol->curvol, zol->io);
 msleep(20);

 x1 = inb(zol->io);
 msleep(10);
 x2 = inb(zol->io);

 mutex_unlock(&zol->lock);

 return x1 == x2 && x1 == 0xcf;
}
