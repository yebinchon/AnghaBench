
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct poseidon_audio {int capture_stream; int copied_position; int rcv_position; } ;
struct poseidon {struct poseidon_audio audio; } ;


 int EINVAL ;




 int STREAM_OFF ;
 int STREAM_ON ;
 int STREAM_SUSPEND ;
 scalar_t__ debug_mode ;
 int fire_audio_urb (struct poseidon*) ;
 int in_hibernation (struct poseidon*) ;
 int log (char*,int,int ) ;
 struct poseidon* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pd_capture_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct poseidon *p = snd_pcm_substream_chip(substream);
 struct poseidon_audio *pa = &p->audio;

 if (debug_mode)
  log("cmd %d, audio stat : %d\n", cmd, pa->capture_stream);

 switch (cmd) {
 case 131:
 case 130:
  if (pa->capture_stream == STREAM_ON)
   return 0;

  pa->rcv_position = pa->copied_position = 0;
  pa->capture_stream = STREAM_ON;

  if (in_hibernation(p))
   return 0;
  fire_audio_urb(p);
  return 0;

 case 128:
  pa->capture_stream = STREAM_SUSPEND;
  return 0;
 case 129:
  pa->capture_stream = STREAM_OFF;
  return 0;
 default:
  return -EINVAL;
 }
}
