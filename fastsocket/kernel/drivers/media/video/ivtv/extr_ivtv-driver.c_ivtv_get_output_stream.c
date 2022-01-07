
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {int dummy; } ;
struct ivtv {int output_mode; struct ivtv_stream* streams; } ;


 size_t IVTV_DEC_STREAM_TYPE_MPG ;
 size_t IVTV_DEC_STREAM_TYPE_YUV ;



struct ivtv_stream *ivtv_get_output_stream(struct ivtv *itv)
{
 switch (itv->output_mode) {
 case 129:
  return &itv->streams[IVTV_DEC_STREAM_TYPE_MPG];
 case 128:
  return &itv->streams[IVTV_DEC_STREAM_TYPE_YUV];
 default:
  return ((void*)0);
 }
}
