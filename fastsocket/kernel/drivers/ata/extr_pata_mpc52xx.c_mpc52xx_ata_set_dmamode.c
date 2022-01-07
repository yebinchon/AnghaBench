
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_ata_priv {int dummy; } ;
struct ata_port {int dev; TYPE_1__* host; } ;
struct ata_device {scalar_t__ dma_mode; int devno; } ;
struct TYPE_2__ {struct mpc52xx_ata_priv* private_data; } ;


 int XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int dev_alert (int ,char*,int) ;
 int mpc52xx_ata_apply_timings (struct mpc52xx_ata_priv*,int ) ;
 int mpc52xx_ata_compute_mdma_timings (struct mpc52xx_ata_priv*,int ,int) ;
 int mpc52xx_ata_compute_udma_timings (struct mpc52xx_ata_priv*,int ,int) ;

__attribute__((used)) static void
mpc52xx_ata_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 struct mpc52xx_ata_priv *priv = ap->host->private_data;
 int rv;

 if (adev->dma_mode >= XFER_UDMA_0) {
  int dma = adev->dma_mode - XFER_UDMA_0;
  rv = mpc52xx_ata_compute_udma_timings(priv, adev->devno, dma);
 } else {
  int dma = adev->dma_mode - XFER_MW_DMA_0;
  rv = mpc52xx_ata_compute_mdma_timings(priv, adev->devno, dma);
 }

 if (rv) {
  dev_alert(ap->dev,
   "Trying to select invalid DMA mode %d\n",
   adev->dma_mode);
  return;
 }

 mpc52xx_ata_apply_timings(priv, adev->devno);
}
