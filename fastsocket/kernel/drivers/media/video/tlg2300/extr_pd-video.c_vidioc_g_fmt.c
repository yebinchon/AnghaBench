
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_5__ {int pix; } ;
struct TYPE_6__ {TYPE_2__ context; } ;
struct poseidon {TYPE_3__ video_data; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;


 int logs (struct front_face*) ;

__attribute__((used)) static int vidioc_g_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;

 logs(front);
 f->fmt.pix = pd->video_data.context.pix;
 return 0;
}
