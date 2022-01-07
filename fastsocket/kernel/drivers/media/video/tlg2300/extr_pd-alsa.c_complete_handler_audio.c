
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; scalar_t__ actual_length; struct poseidon_audio* context; } ;
struct snd_pcm_substream {int dummy; } ;
struct poseidon_audio {int card_close; scalar_t__ capture_stream; struct snd_pcm_substream* capture_pcm_substream; } ;


 int GFP_ATOMIC ;
 scalar_t__ STREAM_ON ;
 int handle_audio_data (struct urb*,int*) ;
 int log (char*,int) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void complete_handler_audio(struct urb *urb)
{
 struct poseidon_audio *pa = urb->context;
 struct snd_pcm_substream *substream = pa->capture_pcm_substream;
 int period_elapsed = 0;
 int ret;

 if (1 == pa->card_close || pa->capture_stream != STREAM_ON)
  return;

 if (urb->status != 0) {

   return;
 }

 if (substream) {
  if (urb->actual_length) {
   handle_audio_data(urb, &period_elapsed);
   if (period_elapsed)
    snd_pcm_period_elapsed(substream);
  }
 }

 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret < 0)
  log("audio urb failed (errcod = %i)", ret);
 return;
}
