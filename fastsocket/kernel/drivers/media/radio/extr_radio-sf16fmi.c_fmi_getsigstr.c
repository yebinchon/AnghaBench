
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmi {int lock; int io; scalar_t__ curvol; } ;


 scalar_t__ inb (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static inline int fmi_getsigstr(struct fmi *fmi)
{
 int val;
 int res;

 mutex_lock(&fmi->lock);
 val = fmi->curvol ? 0x08 : 0x00;
 outb(val, fmi->io);
 outb(val | 0x10, fmi->io);
 msleep(143);
 res = (int)inb(fmi->io + 1);
 outb(val, fmi->io);

 mutex_unlock(&fmi->lock);
 return (res & 2) ? 0 : 0xFFFF;
}
