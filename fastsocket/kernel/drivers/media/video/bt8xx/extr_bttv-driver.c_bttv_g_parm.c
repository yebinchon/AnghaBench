
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeperframe; } ;
struct TYPE_5__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {size_t tvnorm; } ;
struct TYPE_6__ {int v4l2_id; } ;


 TYPE_3__* bttv_tvnorms ;
 int v4l2_video_std_frame_period (int ,int *) ;

__attribute__((used)) static int bttv_g_parm(struct file *file, void *f,
    struct v4l2_streamparm *parm)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 v4l2_video_std_frame_period(bttv_tvnorms[btv->tvnorm].v4l2_id,
        &parm->parm.capture.timeperframe);

 return 0;
}
