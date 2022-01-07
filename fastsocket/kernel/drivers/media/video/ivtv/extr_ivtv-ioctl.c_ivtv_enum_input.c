
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;


 int ivtv_get_input (struct ivtv*,int ,struct v4l2_input*) ;

__attribute__((used)) static int ivtv_enum_input(struct file *file, void *fh, struct v4l2_input *vin)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;


 return ivtv_get_input(itv, vin->index, vin);
}
