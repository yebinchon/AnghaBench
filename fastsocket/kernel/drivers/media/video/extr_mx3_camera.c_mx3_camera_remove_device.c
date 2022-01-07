
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_1__ dev; } ;
struct mx3_camera_dev {struct soc_camera_device* icd; int clk; struct idmac_channel** idmac_channel; } ;
struct idmac_channel {int dma_chan; } ;


 int BUG_ON (int) ;
 int clk_disable (int ) ;
 int dev_info (int ,char*,int ) ;
 int dma_release_channel (int *) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static void mx3_camera_remove_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct mx3_camera_dev *mx3_cam = ici->priv;
 struct idmac_channel **ichan = &mx3_cam->idmac_channel[0];

 BUG_ON(icd != mx3_cam->icd);

 if (*ichan) {
  dma_release_channel(&(*ichan)->dma_chan);
  *ichan = ((void*)0);
 }

 clk_disable(mx3_cam->clk);

 mx3_cam->icd = ((void*)0);

 dev_info(icd->dev.parent, "MX3 Camera driver detached from camera %d\n",
   icd->devnum);
}
