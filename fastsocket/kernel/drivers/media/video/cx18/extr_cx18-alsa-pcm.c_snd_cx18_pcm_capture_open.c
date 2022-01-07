
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cx18* private_data; int hw; } ;
struct snd_cx18_card {struct snd_pcm_substream* capture_pcm_substream; struct v4l2_device* v4l2_dev; } ;
struct cx18_stream {int s_flags; int type; } ;
struct cx18_open_id {int type; scalar_t__ open_id; struct cx18* cx; } ;
struct cx18 {int pcm_announce_callback; int open_id; struct cx18_stream* streams; } ;


 size_t CX18_ENC_STREAM_TYPE_PCM ;
 int CX18_F_S_STREAMING ;
 int CX18_F_S_STREAMOFF ;
 int EBUSY ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int cx18_alsa_announce_pcm_data ;
 scalar_t__ cx18_claim_stream (struct cx18_open_id*,int ) ;
 int cx18_start_v4l2_encode_stream (struct cx18_stream*) ;
 int set_bit (int ,int *) ;
 int snd_cx18_hw_capture ;
 int snd_cx18_lock (struct snd_cx18_card*) ;
 int snd_cx18_unlock (struct snd_cx18_card*) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_cx18_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct cx18* to_cx18 (struct v4l2_device*) ;

__attribute__((used)) static int snd_cx18_pcm_capture_open(struct snd_pcm_substream *substream)
{
 struct snd_cx18_card *cxsc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct v4l2_device *v4l2_dev = cxsc->v4l2_dev;
 struct cx18 *cx = to_cx18(v4l2_dev);
 struct cx18_stream *s;
 struct cx18_open_id item;
 int ret;


 snd_cx18_lock(cxsc);
 s = &cx->streams[CX18_ENC_STREAM_TYPE_PCM];

 item.cx = cx;
 item.type = s->type;
 item.open_id = cx->open_id++;


 if (cx18_claim_stream(&item, item.type)) {

  snd_cx18_unlock(cxsc);
  return -EBUSY;
 }

 if (test_bit(CX18_F_S_STREAMOFF, &s->s_flags) ||
     test_and_set_bit(CX18_F_S_STREAMING, &s->s_flags)) {

  snd_cx18_unlock(cxsc);
  return 0;
 }


 runtime->hw = snd_cx18_hw_capture;
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 cxsc->capture_pcm_substream = substream;
 runtime->private_data = cx;

 cx->pcm_announce_callback = cx18_alsa_announce_pcm_data;


 set_bit(CX18_F_S_STREAMING, &s->s_flags);
 ret = cx18_start_v4l2_encode_stream(s);
 snd_cx18_unlock(cxsc);

 return 0;
}
