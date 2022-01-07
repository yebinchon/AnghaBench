
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct v4l2_queryctrl v; } ;


 int CX8800_CTLS ;
 int EINVAL ;
 scalar_t__ V4L2_CID_AUDIO_MUTE ;
 scalar_t__ V4L2_CID_BASE ;
 scalar_t__ V4L2_CID_LASTP1 ;
 TYPE_1__* cx8800_ctls ;
 struct v4l2_queryctrl no_ctl ;

__attribute__((used)) static int radio_queryctrl (struct file *file, void *priv,
       struct v4l2_queryctrl *c)
{
 int i;

 if (c->id < V4L2_CID_BASE ||
  c->id >= V4L2_CID_LASTP1)
  return -EINVAL;
 if (c->id == V4L2_CID_AUDIO_MUTE) {
  for (i = 0; i < CX8800_CTLS; i++) {
   if (cx8800_ctls[i].v.id == c->id)
    break;
  }
  if (i == CX8800_CTLS)
   return -EINVAL;
  *c = cx8800_ctls[i].v;
 } else
  *c = no_ctl;
 return 0;
}
