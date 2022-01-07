
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct file {struct soc_camera_device* private_data; } ;


 int core ;
 int g_chip_ident ;
 struct v4l2_subdev* soc_camera_to_subdev (struct soc_camera_device*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_dbg_chip_ident*) ;

__attribute__((used)) static int soc_camera_g_chip_ident(struct file *file, void *fh,
       struct v4l2_dbg_chip_ident *id)
{
 struct soc_camera_device *icd = file->private_data;
 struct v4l2_subdev *sd = soc_camera_to_subdev(icd);

 return v4l2_subdev_call(sd, core, g_chip_ident, id);
}
