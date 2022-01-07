
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_format {int dummy; } ;
struct soc_camera_device {int dummy; } ;


 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int try_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_format*) ;
 int video ;

__attribute__((used)) static int mx1_camera_try_fmt(struct soc_camera_device *icd,
         struct v4l2_format *f)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);



 return v4l2_subdev_call(sd, video, try_fmt, f);
}
