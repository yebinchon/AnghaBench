
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct TYPE_2__ {struct v4l2_queryctrl v; } ;


 int CX23885_CTLS ;
 int EINVAL ;
 scalar_t__ V4L2_CID_BASE ;
 scalar_t__ V4L2_CID_LASTP1 ;
 TYPE_1__* cx23885_ctls ;
 struct v4l2_queryctrl no_ctl ;

__attribute__((used)) static int cx23885_ctrl_query(struct v4l2_queryctrl *qctrl)
{
 int i;

 if (qctrl->id < V4L2_CID_BASE ||
     qctrl->id >= V4L2_CID_LASTP1)
  return -EINVAL;
 for (i = 0; i < CX23885_CTLS; i++)
  if (cx23885_ctls[i].v.id == qctrl->id)
   break;
 if (i == CX23885_CTLS) {
  *qctrl = no_ctl;
  return 0;
 }
 *qctrl = cx23885_ctls[i].v;
 return 0;
}
