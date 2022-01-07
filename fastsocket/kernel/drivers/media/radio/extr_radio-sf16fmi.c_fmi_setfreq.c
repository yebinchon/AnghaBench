
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmi {unsigned long curfreq; scalar_t__ curvol; int lock; int io; } ;


 int RSF16_ENCODE (unsigned long) ;
 int fmi_unmute (struct fmi*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outbits (int,int,int ) ;

__attribute__((used)) static inline int fmi_setfreq(struct fmi *fmi, unsigned long freq)
{
 mutex_lock(&fmi->lock);
 fmi->curfreq = freq;

 outbits(16, RSF16_ENCODE(freq), fmi->io);
 outbits(8, 0xC0, fmi->io);
 msleep(143);
 mutex_unlock(&fmi->lock);
 if (fmi->curvol)
  fmi_unmute(fmi);
 return 0;
}
