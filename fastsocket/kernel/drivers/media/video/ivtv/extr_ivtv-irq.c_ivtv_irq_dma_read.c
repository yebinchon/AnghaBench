
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bytesused; } ;
struct ivtv_stream {scalar_t__ sg_processed; scalar_t__ sg_processing_size; scalar_t__ type; int waitq; int q_free; TYPE_1__ q_dma; int name; } ;
struct ivtv_buffer {int dummy; } ;
struct ivtv {size_t cur_dma_stream; int dma_retries; int dma_waitq; int i_flags; struct ivtv_stream* streams; int dma_timer; } ;


 int CX2341X_DEC_SCHED_DMA_FROM_HOST ;
 int IVTV_DEBUG_HI_DMA (char*,int ,int ) ;
 int IVTV_DEBUG_HI_IRQ (char*) ;
 int IVTV_DEBUG_WARN (char*,int,scalar_t__,scalar_t__,int) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_YUV ;
 int IVTV_F_I_DMA ;
 int IVTV_F_I_UDMA ;
 int IVTV_REG_DMASTATUS ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int ivtv_buf_sync_for_cpu (struct ivtv_stream*,struct ivtv_buffer*) ;
 struct ivtv_buffer* ivtv_dequeue (struct ivtv_stream*,TYPE_1__*) ;
 int ivtv_dma_dec_start_xfer (struct ivtv_stream*) ;
 int ivtv_enqueue (struct ivtv_stream*,struct ivtv_buffer*,int *) ;
 int ivtv_stream_sync_for_cpu (struct ivtv_stream*) ;
 int ivtv_vapi (struct ivtv*,int ,int,int ,int ,int) ;
 int read_reg (int ) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;
 int write_reg (int,int ) ;

__attribute__((used)) static void ivtv_irq_dma_read(struct ivtv *itv)
{
 struct ivtv_stream *s = ((void*)0);
 struct ivtv_buffer *buf;
 int hw_stream_type = 0;

 IVTV_DEBUG_HI_IRQ("DEC DMA READ\n");

 del_timer(&itv->dma_timer);

 if (!test_bit(IVTV_F_I_UDMA, &itv->i_flags) && itv->cur_dma_stream < 0)
  return;

 if (!test_bit(IVTV_F_I_UDMA, &itv->i_flags)) {
  s = &itv->streams[itv->cur_dma_stream];
  ivtv_stream_sync_for_cpu(s);

  if (read_reg(IVTV_REG_DMASTATUS) & 0x14) {
   IVTV_DEBUG_WARN("DEC DMA ERROR %x (xfer %d of %d, retry %d)\n",
     read_reg(IVTV_REG_DMASTATUS),
     s->sg_processed, s->sg_processing_size, itv->dma_retries);
   write_reg(read_reg(IVTV_REG_DMASTATUS) & 3, IVTV_REG_DMASTATUS);
   if (itv->dma_retries == 3) {

    itv->dma_retries = 0;
    s->sg_processed = s->sg_processing_size;
   }
   else {


    s->sg_processed = 0;
    itv->dma_retries++;
   }
  }
  if (s->sg_processed < s->sg_processing_size) {

   ivtv_dma_dec_start_xfer(s);
   return;
  }
  if (s->type == IVTV_DEC_STREAM_TYPE_YUV)
   hw_stream_type = 2;
  IVTV_DEBUG_HI_DMA("DEC DATA READ %s: %d\n", s->name, s->q_dma.bytesused);







  ivtv_vapi(itv, CX2341X_DEC_SCHED_DMA_FROM_HOST, 3, 0, s->q_dma.bytesused,
    hw_stream_type);


  while ((buf = ivtv_dequeue(s, &s->q_dma)) != ((void*)0)) {
   ivtv_buf_sync_for_cpu(s, buf);
   ivtv_enqueue(s, buf, &s->q_free);
  }
  wake_up(&s->waitq);
 }
 clear_bit(IVTV_F_I_UDMA, &itv->i_flags);
 clear_bit(IVTV_F_I_DMA, &itv->i_flags);
 itv->cur_dma_stream = -1;
 wake_up(&itv->dma_waitq);
}
