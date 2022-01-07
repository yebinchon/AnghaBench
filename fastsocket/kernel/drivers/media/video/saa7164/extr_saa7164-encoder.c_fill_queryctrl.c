
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;
struct saa7164_encoder_params {int dummy; } ;


 int EINVAL ;
 int ENCODER_DEF_BITRATE ;
 int ENCODER_MAX_BITRATE ;
 int ENCODER_MIN_BITRATE ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_PS ;
 int V4L2_MPEG_STREAM_TYPE_MPEG2_TS ;
 int V4L2_MPEG_VIDEO_ASPECT_1x1 ;
 int V4L2_MPEG_VIDEO_ASPECT_221x100 ;
 int V4L2_MPEG_VIDEO_ASPECT_4x3 ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int fill_queryctrl(struct saa7164_encoder_params *params,
 struct v4l2_queryctrl *c)
{
 switch (c->id) {
 case 140:
  return v4l2_ctrl_query_fill(c, 0x0, 0xff, 1, 127);
 case 139:
  return v4l2_ctrl_query_fill(c, 0x0, 0xff, 1, 66);
 case 129:
  return v4l2_ctrl_query_fill(c, 0x0, 0xff, 1, 62);
 case 138:
  return v4l2_ctrl_query_fill(c, 0x0, 0xff, 1, 128);
 case 128:
  return v4l2_ctrl_query_fill(c, 0x0, 0x0f, 1, 8);
 case 137:
  return v4l2_ctrl_query_fill(c, 0x0, 0x01, 1, 0);
 case 141:
  return v4l2_ctrl_query_fill(c, -83, 24, 1, 20);
 case 134:
  return v4l2_ctrl_query_fill(c,
   ENCODER_MIN_BITRATE, ENCODER_MAX_BITRATE,
   100000, ENCODER_DEF_BITRATE);
 case 136:
  return v4l2_ctrl_query_fill(c,
   V4L2_MPEG_STREAM_TYPE_MPEG2_PS,
   V4L2_MPEG_STREAM_TYPE_MPEG2_TS,
   1, V4L2_MPEG_STREAM_TYPE_MPEG2_PS);
 case 135:
  return v4l2_ctrl_query_fill(c,
   V4L2_MPEG_VIDEO_ASPECT_1x1,
   V4L2_MPEG_VIDEO_ASPECT_221x100,
   1, V4L2_MPEG_VIDEO_ASPECT_4x3);
 case 130:
  return v4l2_ctrl_query_fill(c, 1, 255, 1, 15);
 case 133:
  return v4l2_ctrl_query_fill(c,
   V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
   V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
   1, V4L2_MPEG_VIDEO_BITRATE_MODE_VBR);
 case 131:
  return v4l2_ctrl_query_fill(c,
   1, 3, 1, 1);
 case 132:
  return v4l2_ctrl_query_fill(c,
   ENCODER_MIN_BITRATE, ENCODER_MAX_BITRATE,
   100000, ENCODER_DEF_BITRATE);
 default:
  return -EINVAL;
 }
}
