
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_host {struct mx1_camera_dev* priv; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {int devnum; TYPE_1__ dev; } ;
struct mx1_camera_dev {struct soc_camera_device* icd; int dma_chan; scalar_t__ base; } ;


 int BUG_ON (int) ;
 scalar_t__ CSICR1 ;
 unsigned int CSI_IRQ_MASK ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int dev_info (int ,char*,int ) ;
 int imx_dma_disable (int ) ;
 int mx1_camera_deactivate (struct mx1_camera_dev*) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;

__attribute__((used)) static void mx1_camera_remove_device(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct mx1_camera_dev *pcdev = ici->priv;
 unsigned int csicr1;

 BUG_ON(icd != pcdev->icd);


 csicr1 = __raw_readl(pcdev->base + CSICR1) & ~CSI_IRQ_MASK;
 __raw_writel(csicr1, pcdev->base + CSICR1);


 imx_dma_disable(pcdev->dma_chan);

 dev_info(icd->dev.parent, "MX1 Camera driver detached from camera %d\n",
   icd->devnum);

 mx1_camera_deactivate(pcdev);

 pcdev->icd = ((void*)0);
}
