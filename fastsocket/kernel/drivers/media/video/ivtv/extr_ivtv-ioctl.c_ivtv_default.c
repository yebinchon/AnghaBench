
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct TYPE_2__ {int newi2c; } ;
struct ivtv {int sd_video; TYPE_1__ options; } ;
struct file {int dummy; } ;





 long EINVAL ;
 int core ;
 long ivtv_decoder_ioctls (struct file*,int,void*) ;
 int ivtv_reset_ir_gpio (struct ivtv*) ;
 int reset ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;

__attribute__((used)) static long ivtv_default(struct file *file, void *fh, int cmd, void *arg)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 switch (cmd) {
 case 128: {
  u32 val = *(u32 *)arg;

  if ((val == 0 && itv->options.newi2c) || (val & 0x01))
   ivtv_reset_ir_gpio(itv);
  if (val & 0x02)
   v4l2_subdev_call(itv->sd_video, core, reset, 0);
  break;
 }

 case 139:
 case 133:
 case 134:
 case 135:
 case 132:
 case 130:
 case 136:
 case 137:
 case 138:
 case 129:
 case 131:
 case 140:
 case 141:
 case 142:
  return ivtv_decoder_ioctls(file, cmd, (void *)arg);

 default:
  return -EINVAL;
 }
 return 0;
}
