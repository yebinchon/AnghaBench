
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {int s_flags; int * vdev; } ;
struct ivtv {struct ivtv_stream* streams; } ;


 int IVTV_F_S_STREAMING ;
 int IVTV_MAX_STREAMS ;
 int ivtv_stop_v4l2_encode_stream (struct ivtv_stream*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void ivtv_stop_all_captures(struct ivtv *itv)
{
 int i;

 for (i = IVTV_MAX_STREAMS - 1; i >= 0; i--) {
  struct ivtv_stream *s = &itv->streams[i];

  if (s->vdev == ((void*)0))
   continue;
  if (test_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
   ivtv_stop_v4l2_encode_stream(s, 0);
  }
 }
}
