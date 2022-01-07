
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct v4l2_cropcap {struct v4l2_rect defrect; void* type; struct v4l2_rect c; } ;
struct v4l2_crop {struct v4l2_rect defrect; void* type; struct v4l2_rect c; } ;


 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int cropcap ;
 int g_crop ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_cropcap*) ;
 int video ;

__attribute__((used)) static int client_g_rect(struct v4l2_subdev *sd, struct v4l2_rect *rect)
{
 struct v4l2_crop crop;
 struct v4l2_cropcap cap;
 int ret;

 crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 ret = v4l2_subdev_call(sd, video, g_crop, &crop);
 if (!ret) {
  *rect = crop.c;
  return ret;
 }


 cap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 ret = v4l2_subdev_call(sd, video, cropcap, &cap);
 if (ret < 0)
  return ret;

 *rect = cap.defrect;

 return ret;
}
