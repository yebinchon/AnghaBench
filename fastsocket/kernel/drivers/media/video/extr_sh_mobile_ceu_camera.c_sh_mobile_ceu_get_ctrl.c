
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_control {int id; int value; } ;
struct soc_camera_host {struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {int dummy; } ;


 int CLFCR ;
 int ENOIOCTLCMD ;

 int ceu_read (struct sh_mobile_ceu_dev*,int ) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static int sh_mobile_ceu_get_ctrl(struct soc_camera_device *icd,
      struct v4l2_control *ctrl)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct sh_mobile_ceu_dev *pcdev = ici->priv;
 u32 val;

 switch (ctrl->id) {
 case 128:
  val = ceu_read(pcdev, CLFCR);
  ctrl->value = val ^ 1;
  return 0;
 }
 return -ENOIOCTLCMD;
}
