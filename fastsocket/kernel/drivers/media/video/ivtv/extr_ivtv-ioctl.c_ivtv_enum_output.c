
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_output {int index; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int ivtv_get_output (struct ivtv*,int ,struct v4l2_output*) ;

__attribute__((used)) static int ivtv_enum_output(struct file *file, void *fh, struct v4l2_output *vout)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 return ivtv_get_output(itv, vout->index, vout);
}
