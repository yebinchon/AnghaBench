
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_input {scalar_t__ index; int audioset; int std; int status; int name; scalar_t__ tuner; int type; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct TYPE_3__ {size_t type; } ;
struct bttv {scalar_t__ tuner_type; scalar_t__ svhs; scalar_t__ input; TYPE_1__ c; } ;
typedef int __u32 ;
struct TYPE_4__ {scalar_t__ video_inputs; } ;


 int BT848_DSTATUS ;
 int BT848_DSTATUS_HLOC ;
 int BT848_DSTATUS_PRES ;
 int BTTV_NORMS ;
 int EINVAL ;
 scalar_t__ TUNER_ABSENT ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_INPUT_TYPE_TUNER ;
 int V4L2_IN_ST_NO_H_LOCK ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int btread (int ) ;
 TYPE_2__* bttv_tvcards ;
 int sprintf (int ,char*,...) ;

__attribute__((used)) static int bttv_enum_input(struct file *file, void *priv,
     struct v4l2_input *i)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 int rc = 0;

 if (i->index >= bttv_tvcards[btv->c.type].video_inputs) {
  rc = -EINVAL;
  goto err;
 }

 i->type = V4L2_INPUT_TYPE_CAMERA;
 i->audioset = 1;

 if (btv->tuner_type != TUNER_ABSENT && i->index == 0) {
  sprintf(i->name, "Television");
  i->type = V4L2_INPUT_TYPE_TUNER;
  i->tuner = 0;
 } else if (i->index == btv->svhs) {
  sprintf(i->name, "S-Video");
 } else {
  sprintf(i->name, "Composite%d", i->index);
 }

 if (i->index == btv->input) {
  __u32 dstatus = btread(BT848_DSTATUS);
  if (0 == (dstatus & BT848_DSTATUS_PRES))
   i->status |= V4L2_IN_ST_NO_SIGNAL;
  if (0 == (dstatus & BT848_DSTATUS_HLOC))
   i->status |= V4L2_IN_ST_NO_H_LOCK;
 }

 i->std = BTTV_NORMS;

err:

 return rc;
}
