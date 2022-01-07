
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int actual_length; unsigned char* transfer_buffer; struct poseidon_audio* context; } ;
struct snd_pcm_runtime {int frame_bits; unsigned int buffer_size; scalar_t__ period_size; scalar_t__ dma_area; } ;
struct poseidon_audio {unsigned int rcv_position; scalar_t__ copied_position; TYPE_1__* capture_pcm_substream; } ;
struct TYPE_3__ {struct snd_pcm_runtime* runtime; } ;


 int AUDIO_BUF_SIZE ;
 int AUDIO_TRAILER_SIZE ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int snd_pcm_stream_lock (TYPE_1__*) ;
 int snd_pcm_stream_unlock (TYPE_1__*) ;

__attribute__((used)) static inline void handle_audio_data(struct urb *urb, int *period_elapsed)
{
 struct poseidon_audio *pa = urb->context;
 struct snd_pcm_runtime *runtime = pa->capture_pcm_substream->runtime;

 int stride = runtime->frame_bits >> 3;
 int len = urb->actual_length / stride;
 unsigned char *cp = urb->transfer_buffer;
 unsigned int oldptr = pa->rcv_position;

 if (urb->actual_length == AUDIO_BUF_SIZE - 4)
  len -= (AUDIO_TRAILER_SIZE / stride);


 if (oldptr + len >= runtime->buffer_size) {
  unsigned int cnt = runtime->buffer_size - oldptr;

  memcpy(runtime->dma_area + oldptr * stride, cp, cnt * stride);
  memcpy(runtime->dma_area, (cp + cnt * stride),
     (len * stride - cnt * stride));
 } else
  memcpy(runtime->dma_area + oldptr * stride, cp, len * stride);


 snd_pcm_stream_lock(pa->capture_pcm_substream);
 pa->rcv_position += len;
 if (pa->rcv_position >= runtime->buffer_size)
  pa->rcv_position -= runtime->buffer_size;

 pa->copied_position += (len);
 if (pa->copied_position >= runtime->period_size) {
  pa->copied_position -= runtime->period_size;
  *period_elapsed = 1;
 }
 snd_pcm_stream_unlock(pa->capture_pcm_substream);
}
