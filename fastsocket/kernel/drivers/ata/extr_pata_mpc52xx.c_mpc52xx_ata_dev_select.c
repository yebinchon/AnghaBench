
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_ata_priv {unsigned int csel; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct mpc52xx_ata_priv* private_data; } ;


 int ata_sff_dev_select (struct ata_port*,unsigned int) ;
 int mpc52xx_ata_apply_timings (struct mpc52xx_ata_priv*,unsigned int) ;

__attribute__((used)) static void
mpc52xx_ata_dev_select(struct ata_port *ap, unsigned int device)
{
 struct mpc52xx_ata_priv *priv = ap->host->private_data;

 if (device != priv->csel)
  mpc52xx_ata_apply_timings(priv, device);

 ata_sff_dev_select(ap, device);
}
