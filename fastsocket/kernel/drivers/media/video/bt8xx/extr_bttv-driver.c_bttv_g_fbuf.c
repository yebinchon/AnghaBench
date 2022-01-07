
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; int capability; } ;
struct file {int dummy; } ;
struct bttv_fh {TYPE_2__* ovfmt; struct bttv* btv; } ;
struct bttv {struct v4l2_framebuffer fbuf; } ;
struct TYPE_4__ {int fourcc; } ;


 int V4L2_FBUF_CAP_LIST_CLIPPING ;

__attribute__((used)) static int bttv_g_fbuf(struct file *file, void *f,
    struct v4l2_framebuffer *fb)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 *fb = btv->fbuf;
 fb->capability = V4L2_FBUF_CAP_LIST_CLIPPING;
 if (fh->ovfmt)
  fb->fmt.pixelformat = fh->ovfmt->fourcc;
 return 0;
}
