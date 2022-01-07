
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_channel_settings {int dummy; } ;
struct v4l2_input {int status; int name; int std; int type; int index; } ;
struct file {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int name; int std; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int VINO_INPUT_COMPOSITE ;
 int VINO_INPUT_NONE ;
 int VINO_INPUT_SVIDEO ;
 int decoder_call (int ,int ,int *) ;
 int dprintk (char*,int ) ;
 int g_input_status ;
 int memset (struct v4l2_input*,int ,int) ;
 int strcpy (int ,int ) ;
 int video ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_1__* vino_inputs ;
 int vino_int_enum_input (struct vino_channel_settings*,int ) ;

__attribute__((used)) static int vino_enum_input(struct file *file, void *__fh,
          struct v4l2_input *i)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 __u32 index = i->index;
 int input;
 dprintk("requested index = %d\n", index);

 input = vino_int_enum_input(vcs, index);
 if (input == VINO_INPUT_NONE)
  return -EINVAL;

 memset(i, 0, sizeof(struct v4l2_input));

 i->index = index;
 i->type = V4L2_INPUT_TYPE_CAMERA;
 i->std = vino_inputs[input].std;
 strcpy(i->name, vino_inputs[input].name);

 if (input == VINO_INPUT_COMPOSITE || input == VINO_INPUT_SVIDEO)
  decoder_call(video, g_input_status, &i->status);
 return 0;
}
