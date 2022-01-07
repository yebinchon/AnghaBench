
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmr2 {unsigned long curfreq; int io; int stereo; } ;


 int RSF16_ENCODE (unsigned long) ;
 int fmr2_mute (int ) ;
 int fmr2_stereo_mode (int ) ;
 int fmr2_unmute (int ) ;
 int msleep (int) ;
 int outbits (int,int,int,int ) ;

__attribute__((used)) static int fmr2_setfreq(struct fmr2 *dev)
{
 unsigned long freq = dev->curfreq;

 fmr2_mute(dev->io);





 outbits(9, 0x2, 3, dev->io);
 outbits(16, RSF16_ENCODE(freq), 2, dev->io);

 fmr2_unmute(dev->io);


 msleep(110);



 dev->stereo = fmr2_stereo_mode(dev->io);
 return 0;
}
