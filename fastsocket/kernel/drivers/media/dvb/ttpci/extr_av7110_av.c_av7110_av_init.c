
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipack {struct av7110* data; } ;
struct av7110 {int ** kbuf; scalar_t__ iobuf; int aout; int avout; struct ipack* ipack; } ;


 scalar_t__ AOUTLEN ;
 scalar_t__ AVOUTLEN ;
 scalar_t__ BMPLEN ;
 int IPACKS ;
 int av7110_ipack_free (struct ipack*) ;
 int av7110_ipack_init (struct ipack*,int,void (*) (u8*,int,void*)) ;
 int dvb_ringbuffer_init (int *,scalar_t__,scalar_t__) ;
 int play_audio_cb ;
 int play_video_cb ;

int av7110_av_init(struct av7110 *av7110)
{
 void (*play[])(u8 *, int, void *) = { play_audio_cb, play_video_cb };
 int i, ret;

 for (i = 0; i < 2; i++) {
  struct ipack *ipack = av7110->ipack + i;

  ret = av7110_ipack_init(ipack, IPACKS, play[i]);
  if (ret < 0) {
   if (i)
    av7110_ipack_free(--ipack);
   goto out;
  }
  ipack->data = av7110;
 }

 dvb_ringbuffer_init(&av7110->avout, av7110->iobuf, AVOUTLEN);
 dvb_ringbuffer_init(&av7110->aout, av7110->iobuf + AVOUTLEN, AOUTLEN);

 av7110->kbuf[0] = (u8 *)(av7110->iobuf + AVOUTLEN + AOUTLEN + BMPLEN);
 av7110->kbuf[1] = av7110->kbuf[0] + 2 * IPACKS;
out:
 return ret;
}
