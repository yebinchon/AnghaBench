
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmi {int lock; int io; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void fmi_mute(struct fmi *fmi)
{
 mutex_lock(&fmi->lock);
 outb(0x00, fmi->io);
 mutex_unlock(&fmi->lock);
}
