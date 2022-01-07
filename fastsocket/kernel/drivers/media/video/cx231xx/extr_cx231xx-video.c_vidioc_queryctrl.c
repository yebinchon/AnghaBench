
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {int id; scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;
struct TYPE_2__ {struct v4l2_queryctrl v; } ;


 int CX231XX_CTLS ;
 int EINVAL ;
 int V4L2_CID_BASE ;
 int V4L2_CID_LASTP1 ;
 int call_all (struct cx231xx*,int ,int ,struct v4l2_queryctrl*) ;
 int check_dev (struct cx231xx*) ;
 int core ;
 int ctrl_classes ;
 TYPE_1__* cx231xx_ctls ;
 int memset (struct v4l2_queryctrl*,int ,int) ;
 struct v4l2_queryctrl no_ctl ;
 int queryctrl ;
 scalar_t__ unlikely (int) ;
 int v4l2_ctrl_next (int ,int) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
       struct v4l2_queryctrl *qc)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int id = qc->id;
 int i;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 qc->id = v4l2_ctrl_next(ctrl_classes, qc->id);
 if (unlikely(qc->id == 0))
  return -EINVAL;

 memset(qc, 0, sizeof(*qc));

 qc->id = id;

 if (qc->id < V4L2_CID_BASE || qc->id >= V4L2_CID_LASTP1)
  return -EINVAL;

 for (i = 0; i < CX231XX_CTLS; i++)
  if (cx231xx_ctls[i].v.id == qc->id)
   break;

 if (i == CX231XX_CTLS) {
  *qc = no_ctl;
  return 0;
 }
 *qc = cx231xx_ctls[i].v;

 call_all(dev, core, queryctrl, qc);

 if (qc->type)
  return 0;
 else
  return -EINVAL;
}
