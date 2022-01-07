
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {scalar_t__ playmode; int audtail; int audhead; int vidhead; int vidtail; scalar_t__ osdtail; scalar_t__ osdhead; int vidq; scalar_t__ vidbuf; scalar_t__ dmadebi; int audq; scalar_t__ audbuf; } ;


 int IBM_MP2_AUD_FIFO ;
 int IBM_MP2_AUD_FIFOW ;
 int IBM_MP2_FIFO ;
 int IBM_MP2_FIFOW ;
 scalar_t__ NewCard ;
 int SAA7146_IER ;
 int SAA7146_PSR_DEBI_S ;
 int SAA7146_PSR_PIN1 ;
 scalar_t__ VID_PLAY_NORMAL ;
 int debAudio ;
 int debNormal ;
 int debVideo ;
 int debiread (struct saa7146*,int ,int ,int) ;
 int debiwrite (struct saa7146*,int ,int ,int ,int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int saawrite (int,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void do_irq_send_data(struct saa7146 *saa)
{
 int split, audbytes, vidbytes;

 saawrite(SAA7146_PSR_PIN1, SAA7146_IER);

 if (saa->playmode != VID_PLAY_NORMAL)
  saa->audtail = saa->audhead = 0;
 if (saa->audhead <= saa->audtail)
  audbytes = saa->audtail - saa->audhead;
 else
  audbytes = 65536 - (saa->audhead - saa->audtail);
 if (saa->vidhead <= saa->vidtail)
  vidbytes = saa->vidtail - saa->vidhead;
 else
  vidbytes = 524288 - (saa->vidhead - saa->vidtail);
 if (audbytes == 0 && vidbytes == 0 && saa->osdtail == saa->osdhead) {
  saawrite(0, SAA7146_IER);
  return;
 }

 if (audbytes >= 2048 && (debiread(saa, debNormal, IBM_MP2_AUD_FIFO, 2)
   & 0xff) < 60) {
  if (saa->audhead > saa->audtail)
   split = 65536 - saa->audhead;
  else
   split = 0;
  audbytes = 2048;
  if (split > 0 && split < 2048) {
   memcpy(saa->dmadebi, saa->audbuf + saa->audhead, split);
   saa->audhead = 0;
   audbytes -= split;
  } else
   split = 0;
  memcpy(saa->dmadebi + split, saa->audbuf + saa->audhead,
   audbytes);
  saa->audhead += audbytes;
  saa->audhead &= 0xffff;
  debiwrite(saa, debAudio, (NewCard ? IBM_MP2_AUD_FIFO :
   IBM_MP2_AUD_FIFOW), 0, 2048);
  wake_up_interruptible(&saa->audq);

 } else if (vidbytes >= 30720 && (debiread(saa, debNormal,
        IBM_MP2_FIFO, 2)) < 16384) {
  if (saa->vidhead > saa->vidtail)
   split = 524288 - saa->vidhead;
  else
   split = 0;
  vidbytes = 30720;
  if (split > 0 && split < 30720) {
   memcpy(saa->dmadebi, saa->vidbuf + saa->vidhead, split);
   saa->vidhead = 0;
   vidbytes -= split;
  } else
   split = 0;
  memcpy(saa->dmadebi + split, saa->vidbuf + saa->vidhead,
   vidbytes);
  saa->vidhead += vidbytes;
  saa->vidhead &= 0x7ffff;
  debiwrite(saa, debVideo, (NewCard ? IBM_MP2_FIFO :
       IBM_MP2_FIFOW), 0, 30720);
  wake_up_interruptible(&saa->vidq);
 }
 saawrite(SAA7146_PSR_DEBI_S | SAA7146_PSR_PIN1, SAA7146_IER);
}
