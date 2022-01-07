
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* format; } ;
struct zoran_fh {TYPE_3__ overlay_settings; struct zoran* zr; } ;
struct TYPE_5__ {scalar_t__ format; } ;
struct zoran {int resource_lock; int vbuf_bytesperline; TYPE_1__ overlay_settings; int vbuf_height; int vbuf_width; int vbuf_base; } ;
struct TYPE_8__ {int field; int colorspace; int bytesperline; int pixelformat; int height; int width; } ;
struct v4l2_framebuffer {int capability; int flags; TYPE_4__ fmt; int base; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int fourcc; } ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FBUF_CAP_LIST_CLIPPING ;
 int V4L2_FBUF_FLAG_OVERLAY ;
 int V4L2_FIELD_INTERLACED ;
 int memset (struct v4l2_framebuffer*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_g_fbuf(struct file *file, void *__fh,
  struct v4l2_framebuffer *fb)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 memset(fb, 0, sizeof(*fb));
 mutex_lock(&zr->resource_lock);
 fb->base = zr->vbuf_base;
 fb->fmt.width = zr->vbuf_width;
 fb->fmt.height = zr->vbuf_height;
 if (zr->overlay_settings.format)
  fb->fmt.pixelformat = fh->overlay_settings.format->fourcc;
 fb->fmt.bytesperline = zr->vbuf_bytesperline;
 mutex_unlock(&zr->resource_lock);
 fb->fmt.colorspace = V4L2_COLORSPACE_SRGB;
 fb->fmt.field = V4L2_FIELD_INTERLACED;
 fb->flags = V4L2_FBUF_FLAG_OVERLAY;
 fb->capability = V4L2_FBUF_CAP_LIST_CLIPPING;

 return 0;
}
