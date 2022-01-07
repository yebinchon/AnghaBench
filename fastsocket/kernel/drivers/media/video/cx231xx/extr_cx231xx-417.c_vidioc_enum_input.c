
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_input {int index; int type; int name; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_input {scalar_t__ type; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {size_t model; } ;
struct TYPE_4__ {size_t type; } ;
struct TYPE_3__ {struct cx231xx_input* input; } ;


 scalar_t__ CX231XX_VMUX_CABLE ;
 scalar_t__ CX231XX_VMUX_TELEVISION ;
 int EINVAL ;
 TYPE_2__* INPUT (int) ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 TYPE_1__* cx231xx_boards ;
 int dprintk (int,char*,int) ;
 int * iname ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
    struct v4l2_input *i)
{
 struct cx231xx_fh *fh = file->private_data;
 struct cx231xx *dev = fh->dev;
 struct cx231xx_input *input;
 int n;
 dprintk(3, "enter vidioc_enum_input()i->index=%d\n", i->index);

 if (i->index >= 4)
  return -EINVAL;


 input = &cx231xx_boards[dev->model].input[i->index];

 if (input->type == 0)
  return -EINVAL;




 n = i->index;
 strcpy(i->name, iname[INPUT(n)->type]);

 if (input->type == CX231XX_VMUX_TELEVISION ||
     input->type == CX231XX_VMUX_CABLE)
  i->type = V4L2_INPUT_TYPE_TUNER;
 else
  i->type = V4L2_INPUT_TYPE_CAMERA;


 return 0;
}
