
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv_stream {int s_flags; } ;
struct ivtv {struct ivtv_stream* streams; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int IVTV_DEBUG_HI_IRQ (char*) ;
 size_t IVTV_DEC_STREAM_TYPE_VBI ;
 int IVTV_F_S_CLAIMED ;
 int IVTV_F_S_PIO_PENDING ;
 int set_bit (int ,int *) ;
 int stream_enc_dma_append (struct ivtv_stream*,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ivtv_irq_dec_vbi_reinsert(struct ivtv *itv)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 struct ivtv_stream *s = &itv->streams[IVTV_DEC_STREAM_TYPE_VBI];

 IVTV_DEBUG_HI_IRQ("DEC VBI REINSERT\n");
 if (test_bit(IVTV_F_S_CLAIMED, &s->s_flags) &&
   !stream_enc_dma_append(s, data)) {
  set_bit(IVTV_F_S_PIO_PENDING, &s->s_flags);
 }
}
