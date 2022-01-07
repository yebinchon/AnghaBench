
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int index; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int ivtv_get_audio_input (struct ivtv*,int ,struct v4l2_audio*) ;

__attribute__((used)) static int ivtv_enumaudio(struct file *file, void *fh, struct v4l2_audio *vin)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 return ivtv_get_audio_input(itv, vin->index, vin);
}
