
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int muted; int lock; scalar_t__ io; } ;


 int inb (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void zol_mute(struct zoltrix *zol)
{
 zol->muted = 1;
 mutex_lock(&zol->lock);
 outb(0, zol->io);
 outb(0, zol->io);
 inb(zol->io + 3);
 mutex_unlock(&zol->lock);
}
