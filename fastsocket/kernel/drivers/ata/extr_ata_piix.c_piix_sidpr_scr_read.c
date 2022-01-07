
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct piix_host_priv {int sidpr_lock; scalar_t__ sidpr; } ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct piix_host_priv* private_data; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int EINVAL ;
 scalar_t__ PIIX_SIDPR_DATA ;
 int ioread32 (scalar_t__) ;
 int piix_sidpr_sel (struct ata_link*,unsigned int) ;
 int piix_sidx_map ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int piix_sidpr_scr_read(struct ata_link *link,
          unsigned int reg, u32 *val)
{
 struct piix_host_priv *hpriv = link->ap->host->private_data;
 unsigned long flags;

 if (reg >= ARRAY_SIZE(piix_sidx_map))
  return -EINVAL;

 spin_lock_irqsave(&hpriv->sidpr_lock, flags);
 piix_sidpr_sel(link, reg);
 *val = ioread32(hpriv->sidpr + PIIX_SIDPR_DATA);
 spin_unlock_irqrestore(&hpriv->sidpr_lock, flags);
 return 0;
}
