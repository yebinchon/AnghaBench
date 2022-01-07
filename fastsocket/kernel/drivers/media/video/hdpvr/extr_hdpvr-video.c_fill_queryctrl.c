
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; int flags; } ;
struct hdpvr_options {int bitrate_mode; } ;


 int EINVAL ;
 int HDPVR_CONSTANT ;
 int V4L2_CTRL_FLAG_INACTIVE ;
 int V4L2_MPEG_AUDIO_ENCODING_AAC ;
 int V4L2_MPEG_AUDIO_ENCODING_AC3 ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ;
 int V4L2_MPEG_VIDEO_BITRATE_MODE_VBR ;
 int V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int,int,int,int) ;

__attribute__((used)) static int fill_queryctrl(struct hdpvr_options *opt, struct v4l2_queryctrl *qc,
     int ac3)
{
 int err;

 switch (qc->id) {
 case 137:
  return v4l2_ctrl_query_fill(qc, 0x0, 0xff, 1, 0x86);
 case 136:
  return v4l2_ctrl_query_fill(qc, 0x0, 0xff, 1, 0x80);
 case 129:
  return v4l2_ctrl_query_fill(qc, 0x0, 0xff, 1, 0x80);
 case 135:
  return v4l2_ctrl_query_fill(qc, 0x0, 0xff, 1, 0x80);
 case 128:
  return v4l2_ctrl_query_fill(qc, 0x0, 0xff, 1, 0x80);
 case 134:
  return v4l2_ctrl_query_fill(
   qc, V4L2_MPEG_AUDIO_ENCODING_AAC,
   ac3 ? V4L2_MPEG_AUDIO_ENCODING_AC3
   : V4L2_MPEG_AUDIO_ENCODING_AAC,
   1, V4L2_MPEG_AUDIO_ENCODING_AAC);
 case 130:
  return v4l2_ctrl_query_fill(
   qc, V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC,
   V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC, 1,
   V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC);



 case 132:
  return v4l2_ctrl_query_fill(
   qc, V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
   V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 1,
   V4L2_MPEG_VIDEO_BITRATE_MODE_CBR);

 case 133:
  return v4l2_ctrl_query_fill(qc, 1000000, 13500000, 100000,
         6500000);
 case 131:
  err = v4l2_ctrl_query_fill(qc, 1100000, 20200000, 100000,
        9000000);
  if (!err && opt->bitrate_mode == HDPVR_CONSTANT)
   qc->flags |= V4L2_CTRL_FLAG_INACTIVE;
  return err;
 default:
  return -EINVAL;
 }
}
