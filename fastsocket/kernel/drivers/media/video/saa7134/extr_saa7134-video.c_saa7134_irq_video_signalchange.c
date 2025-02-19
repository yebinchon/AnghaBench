
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct saa7134_dev {int nosignal; int automute; TYPE_1__* mops; scalar_t__ ctl_automute; } ;
struct TYPE_2__ {int (* signal_change ) (struct saa7134_dev*) ;} ;


 int SAA7134_STATUS_VIDEO1 ;
 int SAA7134_STATUS_VIDEO2 ;
 int SAA7134_SYNC_CTRL ;
 int dprintk (char*,char*,char*,char const*) ;
 int noninterlaced ;
 int saa7134_tvaudio_do_scan (struct saa7134_dev*) ;
 int saa7134_tvaudio_setmute (struct saa7134_dev*) ;
 int saa_clearb (int ,int) ;
 int saa_readb (int ) ;
 int saa_setb (int ,int) ;
 int stub1 (struct saa7134_dev*) ;

void saa7134_irq_video_signalchange(struct saa7134_dev *dev)
{
 static const char *st[] = {
  "(no signal)", "NTSC", "PAL", "SECAM" };
 u32 st1,st2;

 st1 = saa_readb(SAA7134_STATUS_VIDEO1);
 st2 = saa_readb(SAA7134_STATUS_VIDEO2);
 dprintk("DCSDT: pll: %s, sync: %s, norm: %s\n",
  (st1 & 0x40) ? "not locked" : "locked",
  (st2 & 0x40) ? "no" : "yes",
  st[st1 & 0x03]);
 dev->nosignal = (st1 & 0x40) || (st2 & 0x40) || !(st2 & 0x1);

 if (dev->nosignal) {

  if (dev->ctl_automute)
   dev->automute = 1;
  saa7134_tvaudio_setmute(dev);
 } else {

  saa7134_tvaudio_do_scan(dev);
 }

 if ((st2 & 0x80) && !noninterlaced && !dev->nosignal)
  saa_clearb(SAA7134_SYNC_CTRL, 0x20);
 else
  saa_setb(SAA7134_SYNC_CTRL, 0x20);

 if (dev->mops && dev->mops->signal_change)
  dev->mops->signal_change(dev);
}
