
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {TYPE_1__* v4l2_dev; } ;
struct v4l2_rect {unsigned int width; unsigned int height; scalar_t__ left; scalar_t__ top; } ;
struct v4l2_cropcap {struct v4l2_rect bounds; struct v4l2_rect c; } ;
struct v4l2_crop {struct v4l2_rect bounds; struct v4l2_rect c; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int client_g_rect (struct v4l2_subdev*,struct v4l2_rect*) ;
 int cropcap ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,scalar_t__,scalar_t__) ;
 int dev_geo (struct device*,char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ is_inside (struct v4l2_rect*,struct v4l2_rect*) ;
 scalar_t__ is_smaller (struct v4l2_rect*,struct v4l2_rect*) ;
 unsigned int max (unsigned int,int) ;
 int memcmp (struct v4l2_rect*,struct v4l2_rect*,int) ;
 int s_crop ;
 int soc_camera_limit_side (scalar_t__*,unsigned int*,scalar_t__,int,unsigned int) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_cropcap*) ;
 int video ;

__attribute__((used)) static int client_s_crop(struct v4l2_subdev *sd, struct v4l2_crop *crop,
    struct v4l2_crop *cam_crop)
{
 struct v4l2_rect *rect = &crop->c, *cam_rect = &cam_crop->c;
 struct device *dev = sd->v4l2_dev->dev;
 struct v4l2_cropcap cap;
 int ret;
 unsigned int width, height;

 v4l2_subdev_call(sd, video, s_crop, crop);
 ret = client_g_rect(sd, cam_rect);
 if (ret < 0)
  return ret;





 if (!memcmp(rect, cam_rect, sizeof(*rect))) {

  dev_dbg(dev, "Camera S_CROP successful for %ux%u@%u:%u\n",
   rect->width, rect->height, rect->left, rect->top);
  return 0;
 }


 dev_geo(dev, "Fix camera S_CROP for %ux%u@%u:%u to %ux%u@%u:%u\n",
  cam_rect->width, cam_rect->height,
  cam_rect->left, cam_rect->top,
  rect->width, rect->height, rect->left, rect->top);


 ret = v4l2_subdev_call(sd, video, cropcap, &cap);
 if (ret < 0)
  return ret;

 soc_camera_limit_side(&rect->left, &rect->width, cap.bounds.left, 2,
         cap.bounds.width);
 soc_camera_limit_side(&rect->top, &rect->height, cap.bounds.top, 4,
         cap.bounds.height);





 width = max(cam_rect->width, 2);
 height = max(cam_rect->height, 2);

 while (!ret && (is_smaller(cam_rect, rect) ||
   is_inside(cam_rect, rect)) &&
        (cap.bounds.width > width || cap.bounds.height > height)) {

  width *= 2;
  height *= 2;

  cam_rect->width = width;
  cam_rect->height = height;
  if (cam_rect->left > rect->left)
   cam_rect->left = cap.bounds.left;

  if (cam_rect->left + cam_rect->width < rect->left + rect->width)
   cam_rect->width = rect->left + rect->width -
    cam_rect->left;

  if (cam_rect->top > rect->top)
   cam_rect->top = cap.bounds.top;

  if (cam_rect->top + cam_rect->height < rect->top + rect->height)
   cam_rect->height = rect->top + rect->height -
    cam_rect->top;

  v4l2_subdev_call(sd, video, s_crop, cam_crop);
  ret = client_g_rect(sd, cam_rect);
  dev_geo(dev, "Camera S_CROP %d for %ux%u@%u:%u\n", ret,
   cam_rect->width, cam_rect->height,
   cam_rect->left, cam_rect->top);
 }


 if (is_smaller(cam_rect, rect) || is_inside(cam_rect, rect)) {




  *cam_rect = cap.bounds;
  v4l2_subdev_call(sd, video, s_crop, cam_crop);
  ret = client_g_rect(sd, cam_rect);
  dev_geo(dev, "Camera S_CROP %d for max %ux%u@%u:%u\n", ret,
   cam_rect->width, cam_rect->height,
   cam_rect->left, cam_rect->top);
 }

 return ret;
}
