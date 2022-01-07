
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int height; int width; int colorspace; int field; } ;
struct cx18_av_state {int std; } ;
struct cx18 {int dummy; } ;


 int CX18_DEBUG_INFO_DEV (struct v4l2_subdev*,char*,int,int,int,int) ;
 int CX18_ERR_DEV (struct v4l2_subdev*,char*,int,int) ;
 int EINVAL ;
 int ERANGE ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_MBUS_FMT_FIXED ;
 int V4L2_STD_525_60 ;
 int cx18_av_read (struct cx18*,int) ;
 int cx18_av_write (struct cx18*,int,int) ;
 struct cx18_av_state* to_cx18_av_state (struct v4l2_subdev*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_mbus_fmt(struct v4l2_subdev *sd, struct v4l2_mbus_framefmt *fmt)
{
 struct cx18_av_state *state = to_cx18_av_state(sd);
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 int HSC, VSC, Vsrc, Hsrc, filter, Vlines;
 int is_50Hz = !(state->std & V4L2_STD_525_60);

 if (fmt->code != V4L2_MBUS_FMT_FIXED)
  return -EINVAL;

 fmt->field = V4L2_FIELD_INTERLACED;
 fmt->colorspace = V4L2_COLORSPACE_SMPTE170M;

 Vsrc = (cx18_av_read(cx, 0x476) & 0x3f) << 4;
 Vsrc |= (cx18_av_read(cx, 0x475) & 0xf0) >> 4;

 Hsrc = (cx18_av_read(cx, 0x472) & 0x3f) << 4;
 Hsrc |= (cx18_av_read(cx, 0x471) & 0xf0) >> 4;
 Vlines = fmt->height + (is_50Hz ? 3 : 1);
 if ((fmt->width * 16 < Hsrc) || (Hsrc < fmt->width) ||
     (Vlines * 8 < Vsrc) || (Vsrc < Vlines)) {
  CX18_ERR_DEV(sd, "%dx%d is not a valid size!\n",
        fmt->width, fmt->height);
  return -ERANGE;
 }

 HSC = (Hsrc * (1 << 20)) / fmt->width - (1 << 20);
 VSC = (1 << 16) - (Vsrc * (1 << 9) / Vlines - (1 << 9));
 VSC &= 0x1fff;

 if (fmt->width >= 385)
  filter = 0;
 else if (fmt->width > 192)
  filter = 1;
 else if (fmt->width > 96)
  filter = 2;
 else
  filter = 3;

 CX18_DEBUG_INFO_DEV(sd,
       "decoder set size %dx%d -> scale  %ux%u\n",
       fmt->width, fmt->height, HSC, VSC);


 cx18_av_write(cx, 0x418, HSC & 0xff);
 cx18_av_write(cx, 0x419, (HSC >> 8) & 0xff);
 cx18_av_write(cx, 0x41a, HSC >> 16);

 cx18_av_write(cx, 0x41c, VSC & 0xff);
 cx18_av_write(cx, 0x41d, VSC >> 8);

 cx18_av_write(cx, 0x41e, 0x8 | filter);
 return 0;
}
