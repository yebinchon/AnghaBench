
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zoran_fh {struct zoran* zr; } ;
struct TYPE_4__ {int inputs; TYPE_1__* input; } ;
struct zoran {int resource_lock; TYPE_2__ card; } ;
struct v4l2_input {int index; int status; int std; int type; int name; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_STD_ALL ;
 int decoder_call (struct zoran*,int ,int ,int *) ;
 int g_input_status ;
 int memset (struct v4l2_input*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncpy (int ,int ,int) ;
 int video ;

__attribute__((used)) static int zoran_enum_input(struct file *file, void *__fh,
     struct v4l2_input *inp)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 if (inp->index < 0 || inp->index >= zr->card.inputs)
  return -EINVAL;
 else {
  int id = inp->index;
  memset(inp, 0, sizeof(*inp));
  inp->index = id;
 }

 strncpy(inp->name, zr->card.input[inp->index].name,
  sizeof(inp->name) - 1);
 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = V4L2_STD_ALL;


 mutex_lock(&zr->resource_lock);
 decoder_call(zr, video, g_input_status, &inp->status);
 mutex_unlock(&zr->resource_lock);
 return 0;
}
