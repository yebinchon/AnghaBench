
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_input {int index; int std; int type; int name; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 TYPE_1__* saa7164_tvnorms ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
 struct v4l2_input *i)
{
 int n;

 char *inputs[] = { "tuner", "composite", "svideo", "aux",
  "composite 2", "svideo 2", "aux 2" };

 if (i->index >= 7)
  return -EINVAL;

 strcpy(i->name, inputs[i->index]);

 if (i->index == 0)
  i->type = V4L2_INPUT_TYPE_TUNER;
 else
  i->type = V4L2_INPUT_TYPE_CAMERA;

 for (n = 0; n < ARRAY_SIZE(saa7164_tvnorms); n++)
  i->std |= saa7164_tvnorms[n].id;

 return 0;
}
