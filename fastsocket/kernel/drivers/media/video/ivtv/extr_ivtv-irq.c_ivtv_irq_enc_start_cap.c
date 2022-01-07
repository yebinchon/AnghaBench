
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv_stream {int s_flags; } ;
struct ivtv {struct ivtv_stream* streams; int enc_mbox; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_DEBUG_HI_IRQ (char*,int,int,int) ;
 int IVTV_DEBUG_WARN (char*,int,int,int) ;
 int IVTV_F_S_DMA_PENDING ;
 int IVTV_F_S_PIO_PENDING ;
 int IVTV_MBOX_DMA ;
 int ivtv_api_get_data (int *,int ,int,int*) ;
 size_t* ivtv_stream_map ;
 scalar_t__ ivtv_use_pio (struct ivtv_stream*) ;
 int set_bit (int ,int *) ;
 int stream_enc_dma_append (struct ivtv_stream*,int*) ;

__attribute__((used)) static void ivtv_irq_enc_start_cap(struct ivtv *itv)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 struct ivtv_stream *s;


 ivtv_api_get_data(&itv->enc_mbox, IVTV_MBOX_DMA, 7, data);
 IVTV_DEBUG_HI_IRQ("ENC START CAP %d: %08x %08x\n", data[0], data[1], data[2]);

 if (data[0] > 2 || data[1] == 0 || data[2] == 0) {
  IVTV_DEBUG_WARN("Unknown input: %08x %08x %08x\n",
    data[0], data[1], data[2]);
  return;
 }
 s = &itv->streams[ivtv_stream_map[data[0]]];
 if (!stream_enc_dma_append(s, data)) {
  set_bit(ivtv_use_pio(s) ? IVTV_F_S_PIO_PENDING : IVTV_F_S_DMA_PENDING, &s->s_flags);
 }
}
