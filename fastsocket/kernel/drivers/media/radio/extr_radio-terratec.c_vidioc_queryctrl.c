
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int memcpy (struct v4l2_queryctrl*,TYPE_1__*,int) ;
 TYPE_1__* radio_qctrl ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
     struct v4l2_queryctrl *qc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(radio_qctrl); i++) {
  if (qc->id && qc->id == radio_qctrl[i].id) {
   memcpy(qc, &(radio_qctrl[i]), sizeof(*qc));
   return 0;
  }
 }
 return -EINVAL;
}
