
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_2__* ext_vv_data; } ;
struct file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* core_ops; } ;
struct TYPE_3__ {int (* vidioc_queryctrl ) (struct file*,void*,struct v4l2_queryctrl*) ;} ;


 int DEB_D (char*) ;
 int HEXIUM_CONTROLS ;
 struct v4l2_queryctrl* hexium_controls ;
 int stub1 (struct file*,void*,struct v4l2_queryctrl*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *fh, struct v4l2_queryctrl *qc)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 int i;

 for (i = HEXIUM_CONTROLS - 1; i >= 0; i--) {
  if (hexium_controls[i].id == qc->id) {
   *qc = hexium_controls[i];
   DEB_D(("VIDIOC_QUERYCTRL %d.\n", qc->id));
   return 0;
  }
 }
 return dev->ext_vv_data->core_ops->vidioc_queryctrl(file, fh, qc);
}
