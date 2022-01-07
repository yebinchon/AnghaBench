
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_streamparm {int dummy; } ;
struct soc_camera_device {int dummy; } ;


 int g_parm ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_streamparm*) ;
 int video ;

__attribute__((used)) static int default_g_parm(struct soc_camera_device *icd,
     struct v4l2_streamparm *parm)
{
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);
 return v4l2_subdev_call(sd, video, g_parm, parm);
}
