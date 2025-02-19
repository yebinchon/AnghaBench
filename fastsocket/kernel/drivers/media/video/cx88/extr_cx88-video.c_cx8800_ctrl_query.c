
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; int flags; } ;
struct cx88_core {int tvnorm; } ;
struct TYPE_2__ {struct v4l2_queryctrl v; } ;


 int CX8800_CTLS ;
 int EINVAL ;
 scalar_t__ V4L2_CID_BASE ;
 scalar_t__ V4L2_CID_CHROMA_AGC ;
 scalar_t__ V4L2_CID_LASTP1 ;
 int V4L2_CTRL_FLAG_INACTIVE ;
 int V4L2_STD_SECAM ;
 TYPE_1__* cx8800_ctls ;
 struct v4l2_queryctrl no_ctl ;

int cx8800_ctrl_query(struct cx88_core *core, struct v4l2_queryctrl *qctrl)
{
 int i;

 if (qctrl->id < V4L2_CID_BASE ||
     qctrl->id >= V4L2_CID_LASTP1)
  return -EINVAL;
 for (i = 0; i < CX8800_CTLS; i++)
  if (cx8800_ctls[i].v.id == qctrl->id)
   break;
 if (i == CX8800_CTLS) {
  *qctrl = no_ctl;
  return 0;
 }
 *qctrl = cx8800_ctls[i].v;

 if (cx8800_ctls[i].v.id == V4L2_CID_CHROMA_AGC &&
     core->tvnorm & V4L2_STD_SECAM)
  qctrl->flags |= V4L2_CTRL_FLAG_INACTIVE;

 return 0;
}
