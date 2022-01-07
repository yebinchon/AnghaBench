
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {scalar_t__ type; int s_flags; int name; } ;
struct ivtv {int cur_pio_stream; int dma_waitq; struct ivtv_stream* streams; int i_flags; } ;


 int CX2341X_ENC_SCHED_DMA_TO_HOST ;
 int IVTV_DEBUG_HI_IRQ (char*,int ) ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_PCM ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_YUV ;
 int IVTV_F_I_PIO ;
 int IVTV_F_S_DMA_HAS_VBI ;
 int IVTV_MAX_STREAMS ;
 int clear_bit (int ,int *) ;
 int dma_post (struct ivtv_stream*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int ,int ,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void ivtv_irq_enc_pio_complete(struct ivtv *itv)
{
 struct ivtv_stream *s;

 if (itv->cur_pio_stream < 0 || itv->cur_pio_stream >= IVTV_MAX_STREAMS) {
  itv->cur_pio_stream = -1;
  return;
 }
 s = &itv->streams[itv->cur_pio_stream];
 IVTV_DEBUG_HI_IRQ("ENC PIO COMPLETE %s\n", s->name);
 clear_bit(IVTV_F_I_PIO, &itv->i_flags);
 itv->cur_pio_stream = -1;
 dma_post(s);
 if (s->type == IVTV_ENC_STREAM_TYPE_MPG)
  ivtv_vapi(itv, CX2341X_ENC_SCHED_DMA_TO_HOST, 3, 0, 0, 0);
 else if (s->type == IVTV_ENC_STREAM_TYPE_YUV)
  ivtv_vapi(itv, CX2341X_ENC_SCHED_DMA_TO_HOST, 3, 0, 0, 1);
 else if (s->type == IVTV_ENC_STREAM_TYPE_PCM)
  ivtv_vapi(itv, CX2341X_ENC_SCHED_DMA_TO_HOST, 3, 0, 0, 2);
 clear_bit(IVTV_F_I_PIO, &itv->i_flags);
 if (test_and_clear_bit(IVTV_F_S_DMA_HAS_VBI, &s->s_flags)) {
  s = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
  dma_post(s);
 }
 wake_up(&itv->dma_waitq);
}
