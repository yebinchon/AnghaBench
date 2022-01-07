
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_ata_priv {int dummy; } ;
struct ata_port {int dev; TYPE_1__* host; } ;
struct ata_device {int pio_mode; int devno; } ;
struct TYPE_2__ {struct mpc52xx_ata_priv* private_data; } ;


 int XFER_PIO_0 ;
 int dev_err (int ,char*,int) ;
 int mpc52xx_ata_apply_timings (struct mpc52xx_ata_priv*,int ) ;
 int mpc52xx_ata_compute_pio_timings (struct mpc52xx_ata_priv*,int ,int) ;

__attribute__((used)) static void
mpc52xx_ata_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct mpc52xx_ata_priv *priv = ap->host->private_data;
 int pio, rv;

 pio = adev->pio_mode - XFER_PIO_0;

 rv = mpc52xx_ata_compute_pio_timings(priv, adev->devno, pio);

 if (rv) {
  dev_err(ap->dev, "error: invalid PIO mode: %d\n", pio);
  return;
 }

 mpc52xx_ata_apply_timings(priv, adev->devno);
}
