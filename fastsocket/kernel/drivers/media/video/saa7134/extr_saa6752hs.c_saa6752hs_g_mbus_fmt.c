
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int field; int code; int height; int width; } ;
struct saa6752hs_state {size_t video_format; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;


 size_t SAA6752HS_VF_D1 ;
 size_t SAA6752HS_VF_UNKNOWN ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_MBUS_FMT_FIXED ;
 struct saa6752hs_state* to_state (struct v4l2_subdev*) ;
 TYPE_3__* v4l2_format_table ;

__attribute__((used)) static int saa6752hs_g_mbus_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *f)
{
 struct saa6752hs_state *h = to_state(sd);

 if (h->video_format == SAA6752HS_VF_UNKNOWN)
  h->video_format = SAA6752HS_VF_D1;
 f->width = v4l2_format_table[h->video_format].fmt.pix.width;
 f->height = v4l2_format_table[h->video_format].fmt.pix.height;
 f->code = V4L2_MBUS_FMT_FIXED;
 f->field = V4L2_FIELD_INTERLACED;
 f->colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
