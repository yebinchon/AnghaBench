
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int width; int height; int colorspace; int field; } ;
struct saa6752hs_state {int video_format; } ;


 int EINVAL ;
 int SAA6752HS_VF_1_2_D1 ;
 int SAA6752HS_VF_2_3_D1 ;
 int SAA6752HS_VF_D1 ;
 int SAA6752HS_VF_SIF ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_MBUS_FMT_FIXED ;
 int abs (int) ;
 struct saa6752hs_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa6752hs_s_mbus_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *f)
{
 struct saa6752hs_state *h = to_state(sd);
 int dist_352, dist_480, dist_720;

 if (f->code != V4L2_MBUS_FMT_FIXED)
  return -EINVAL;
 dist_352 = abs(f->width - 352);
 dist_480 = abs(f->width - 480);
 dist_720 = abs(f->width - 720);
 if (dist_720 < dist_480) {
  f->width = 720;
  f->height = 576;
  h->video_format = SAA6752HS_VF_D1;
 } else if (dist_480 < dist_352) {
  f->width = 480;
  f->height = 576;
  h->video_format = SAA6752HS_VF_2_3_D1;
 } else {
  f->width = 352;
  if (abs(f->height - 576) <
      abs(f->height - 288)) {
   f->height = 576;
   h->video_format = SAA6752HS_VF_1_2_D1;
  } else {
   f->height = 288;
   h->video_format = SAA6752HS_VF_SIF;
  }
 }
 f->field = V4L2_FIELD_INTERLACED;
 f->colorspace = V4L2_COLORSPACE_SMPTE170M;
 return 0;
}
