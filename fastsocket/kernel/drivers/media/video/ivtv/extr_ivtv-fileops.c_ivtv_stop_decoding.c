
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ivtv_stream {int s_flags; int name; } ;
struct ivtv_open_id {size_t type; scalar_t__ yuv_frames; struct ivtv* itv; } ;
struct ivtv {scalar_t__ output_mode; int i_flags; scalar_t__ speed; struct ivtv_stream* streams; } ;


 int IVTV_DEBUG_FILE (char*,int ) ;
 int IVTV_DEBUG_INFO (char*) ;
 size_t IVTV_DEC_STREAM_TYPE_YUV ;
 int IVTV_F_I_DECODING_YUV ;
 int IVTV_F_I_DEC_PAUSED ;
 int IVTV_F_S_APPL_IO ;
 int IVTV_F_S_STREAMING ;
 int IVTV_F_S_STREAMOFF ;
 void* OUT_NONE ;
 scalar_t__ OUT_UDMA_YUV ;
 int clear_bit (int ,int *) ;
 int ivtv_release_stream (struct ivtv_stream*) ;
 int ivtv_stop_v4l2_decode_stream (struct ivtv_stream*,int,int ) ;
 int ivtv_yuv_close (struct ivtv*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ivtv_stop_decoding(struct ivtv_open_id *id, int flags, u64 pts)
{
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[id->type];

 IVTV_DEBUG_FILE("close() of %s\n", s->name);

 if (id->type == IVTV_DEC_STREAM_TYPE_YUV &&
  test_bit(IVTV_F_I_DECODING_YUV, &itv->i_flags)) {

  ivtv_yuv_close(itv);
 }


 if (test_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
  IVTV_DEBUG_INFO("close stopping decode\n");

  ivtv_stop_v4l2_decode_stream(s, flags, pts);
  itv->output_mode = OUT_NONE;
 }
 clear_bit(IVTV_F_S_APPL_IO, &s->s_flags);
 clear_bit(IVTV_F_S_STREAMOFF, &s->s_flags);

 if (itv->output_mode == OUT_UDMA_YUV && id->yuv_frames)
  itv->output_mode = OUT_NONE;

 itv->speed = 0;
 clear_bit(IVTV_F_I_DEC_PAUSED, &itv->i_flags);
 ivtv_release_stream(s);
}
