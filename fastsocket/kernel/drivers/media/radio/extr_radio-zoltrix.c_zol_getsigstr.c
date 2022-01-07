
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

__attribute__((used)) static int zol_getsigstr(struct zoltrix *zol)
{
 int a, b;

 mutex_lock(&zol->lock);
 outb(0x00, zol->io);
 outb(zol->curvol, zol->io);
 msleep(20);

 a = inb(zol->io);
 msleep(10);
 b = inb(zol->io);

 mutex_unlock(&zol->lock);

 if (a != b)
  return 0;


 return a == 0xcf || a == 0xdf || a == 0xef;
}
