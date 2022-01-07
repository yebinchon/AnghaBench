
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {scalar_t__ id; } ;
struct TYPE_4__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int debug ;
 int memcpy (struct v4l2_queryctrl*,TYPE_1__*,int) ;
 TYPE_1__* mt9v011_qctrl ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int mt9v011_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 int i;

 v4l2_dbg(1, debug, sd, "queryctrl called\n");

 for (i = 0; i < ARRAY_SIZE(mt9v011_qctrl); i++)
  if (qc->id && qc->id == mt9v011_qctrl[i].id) {
   memcpy(qc, &(mt9v011_qctrl[i]),
          sizeof(*qc));
   return 0;
  }

 return -EINVAL;
}
