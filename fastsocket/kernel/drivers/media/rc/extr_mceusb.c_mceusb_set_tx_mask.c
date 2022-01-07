
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {struct mceusb_dev* priv; } ;
struct TYPE_2__ {scalar_t__ tx_mask_normal; } ;
struct mceusb_dev {int tx_mask; TYPE_1__ flags; } ;


 int MCE_DEFAULT_TX_MASK ;

__attribute__((used)) static int mceusb_set_tx_mask(struct rc_dev *dev, u32 mask)
{
 struct mceusb_dev *ir = dev->priv;

 if (ir->flags.tx_mask_normal)
  ir->tx_mask = mask;
 else
  ir->tx_mask = (mask != MCE_DEFAULT_TX_MASK ?
    mask ^ MCE_DEFAULT_TX_MASK : mask) << 1;

 return 0;
}
