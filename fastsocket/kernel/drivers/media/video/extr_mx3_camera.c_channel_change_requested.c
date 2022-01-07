
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int width; int height; } ;
struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int user_width; int user_height; TYPE_1__ dev; } ;
struct mx3_camera_dev {struct idmac_channel** idmac_channel; } ;
struct idmac_channel {int dummy; } ;


 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static bool channel_change_requested(struct soc_camera_device *icd,
         struct v4l2_rect *rect)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct mx3_camera_dev *mx3_cam = ici->priv;
 struct idmac_channel *ichan = mx3_cam->idmac_channel[0];


 return ichan && rect->width * rect->height >
  icd->user_width * icd->user_height;
}
