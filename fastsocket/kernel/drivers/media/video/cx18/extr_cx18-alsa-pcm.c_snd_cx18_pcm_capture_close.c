
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_cx18_card {struct v4l2_device* v4l2_dev; } ;
struct cx18_stream {int s_flags; } ;
struct cx18 {int * pcm_announce_callback; struct cx18_stream* streams; } ;


 size_t CX18_ENC_STREAM_TYPE_PCM ;
 int CX18_F_S_STREAMING ;
 int clear_bit (int ,int *) ;
 int cx18_release_stream (struct cx18_stream*) ;
 int cx18_stop_v4l2_encode_stream (struct cx18_stream*,int ) ;
 int snd_cx18_lock (struct snd_cx18_card*) ;
 int snd_cx18_unlock (struct snd_cx18_card*) ;
 struct snd_cx18_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 struct cx18* to_cx18 (struct v4l2_device*) ;

__attribute__((used)) static int snd_cx18_pcm_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_cx18_card *cxsc = snd_pcm_substream_chip(substream);
 struct v4l2_device *v4l2_dev = cxsc->v4l2_dev;
 struct cx18 *cx = to_cx18(v4l2_dev);
 struct cx18_stream *s;
 int ret;


 snd_cx18_lock(cxsc);
 s = &cx->streams[CX18_ENC_STREAM_TYPE_PCM];
 ret = cx18_stop_v4l2_encode_stream(s, 0);
 clear_bit(CX18_F_S_STREAMING, &s->s_flags);

 cx18_release_stream(s);

 cx->pcm_announce_callback = ((void*)0);
 snd_cx18_unlock(cxsc);

 return 0;
}
