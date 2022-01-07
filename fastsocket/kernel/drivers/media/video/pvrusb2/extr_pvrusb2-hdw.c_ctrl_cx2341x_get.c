
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ext_controls {int count; int value; int id; struct v4l2_ext_controls* controls; } ;
struct v4l2_ext_control {int count; int value; int id; struct v4l2_ext_control* controls; } ;
struct pvr2_ctrl {TYPE_2__* hdw; TYPE_1__* info; } ;
typedef int cs ;
typedef int c1 ;
struct TYPE_4__ {int enc_ctl_state; } ;
struct TYPE_3__ {int v4l_id; } ;


 int VIDIOC_G_EXT_CTRLS ;
 int cx2341x_ext_ctrls (int *,int ,struct v4l2_ext_controls*,int ) ;
 int memset (struct v4l2_ext_controls*,int ,int) ;

__attribute__((used)) static int ctrl_cx2341x_get(struct pvr2_ctrl *cptr,int *vp)
{
 int ret;
 struct v4l2_ext_controls cs;
 struct v4l2_ext_control c1;
 memset(&cs,0,sizeof(cs));
 memset(&c1,0,sizeof(c1));
 cs.controls = &c1;
 cs.count = 1;
 c1.id = cptr->info->v4l_id;
 ret = cx2341x_ext_ctrls(&cptr->hdw->enc_ctl_state, 0, &cs,
    VIDIOC_G_EXT_CTRLS);
 if (ret) return ret;
 *vp = c1.value;
 return 0;
}
