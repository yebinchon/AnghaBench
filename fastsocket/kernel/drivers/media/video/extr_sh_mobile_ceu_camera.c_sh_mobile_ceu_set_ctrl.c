
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {int id; int value; } ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {TYPE_2__* current_fmt; TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {int dummy; } ;
struct TYPE_4__ {int fourcc; } ;


 int CLFCR ;
 int EINVAL ;
 int ENOIOCTLCMD ;





 int ceu_write (struct sh_mobile_ceu_dev*,int ,int) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int sh_mobile_ceu_set_ctrl(struct soc_camera_device *icd,
      struct v4l2_control *ctrl)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;

 switch (ctrl->id) {
 case 132:
  switch (icd->current_fmt->fourcc) {
  case 131:
  case 129:
  case 130:
  case 128:
   ceu_write(pcdev, CLFCR, !ctrl->value);
   return 0;
  }
  return -EINVAL;
 }
 return -ENOIOCTLCMD;
}
