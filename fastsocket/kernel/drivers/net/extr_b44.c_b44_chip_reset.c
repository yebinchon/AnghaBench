
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_device {TYPE_1__* bus; } ;
struct b44 {int flags; scalar_t__ rx_cons; scalar_t__ rx_prod; scalar_t__ tx_cons; scalar_t__ tx_prod; struct ssb_device* sdev; } ;
struct TYPE_2__ {int bustype; int pcicore; } ;


 int B44_CHIP_RESET_PARTIAL ;
 int B44_DEVCTRL ;
 int B44_DMARX_CTRL ;
 int B44_DMARX_STAT ;
 int B44_DMATX_CTRL ;
 int B44_ENET_CTRL ;
 int B44_FLAG_INTERNAL_PHY ;
 int B44_MDC_RATIO ;
 int B44_MDIO_CTRL ;
 int B44_RCV_LAZY ;
 int DEVCTRL_EPR ;
 int DEVCTRL_IPP ;
 int DIV_ROUND_CLOSEST (int ,int ) ;
 int DMARX_STAT_EMASK ;
 int DMARX_STAT_SIDLE ;
 int ENET_CTRL_DISABLE ;
 int ENET_CTRL_EPSEL ;
 int MDIO_CTRL_MAXF_MASK ;
 int MDIO_CTRL_PREAMBLE ;




 int WARN_ON (int) ;
 int b44_clear_stats (struct b44*) ;
 int b44_wait_bit (struct b44*,int ,int,int,int) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;
 int ssb_clockspeed (TYPE_1__*) ;
 int ssb_device_enable (struct ssb_device*,int ) ;
 int ssb_device_is_enabled (struct ssb_device*) ;
 int ssb_pcicore_dev_irqvecs_enable (int *,struct ssb_device*) ;
 int udelay (int) ;

__attribute__((used)) static void b44_chip_reset(struct b44 *bp, int reset_kind)
{
 struct ssb_device *sdev = bp->sdev;
 bool was_enabled;

 was_enabled = ssb_device_is_enabled(bp->sdev);

 ssb_device_enable(bp->sdev, 0);
 ssb_pcicore_dev_irqvecs_enable(&sdev->bus->pcicore, sdev);

 if (was_enabled) {
  bw32(bp, B44_RCV_LAZY, 0);
  bw32(bp, B44_ENET_CTRL, ENET_CTRL_DISABLE);
  b44_wait_bit(bp, B44_ENET_CTRL, ENET_CTRL_DISABLE, 200, 1);
  bw32(bp, B44_DMATX_CTRL, 0);
  bp->tx_prod = bp->tx_cons = 0;
  if (br32(bp, B44_DMARX_STAT) & DMARX_STAT_EMASK) {
   b44_wait_bit(bp, B44_DMARX_STAT, DMARX_STAT_SIDLE,
         100, 0);
  }
  bw32(bp, B44_DMARX_CTRL, 0);
  bp->rx_prod = bp->rx_cons = 0;
 }

 b44_clear_stats(bp);





 if (reset_kind == B44_CHIP_RESET_PARTIAL)
  return;

 switch (sdev->bus->bustype) {
 case 128:
  bw32(bp, B44_MDIO_CTRL, (MDIO_CTRL_PREAMBLE |
       (DIV_ROUND_CLOSEST(ssb_clockspeed(sdev->bus),
     B44_MDC_RATIO)
       & MDIO_CTRL_MAXF_MASK)));
  break;
 case 131:
  bw32(bp, B44_MDIO_CTRL, (MDIO_CTRL_PREAMBLE |
       (0x0d & MDIO_CTRL_MAXF_MASK)));
  break;
 case 130:
 case 129:
  WARN_ON(1);
  break;
 }

 br32(bp, B44_MDIO_CTRL);

 if (!(br32(bp, B44_DEVCTRL) & DEVCTRL_IPP)) {
  bw32(bp, B44_ENET_CTRL, ENET_CTRL_EPSEL);
  br32(bp, B44_ENET_CTRL);
  bp->flags &= ~B44_FLAG_INTERNAL_PHY;
 } else {
  u32 val = br32(bp, B44_DEVCTRL);

  if (val & DEVCTRL_EPR) {
   bw32(bp, B44_DEVCTRL, (val & ~DEVCTRL_EPR));
   br32(bp, B44_DEVCTRL);
   udelay(100);
  }
  bp->flags |= B44_FLAG_INTERNAL_PHY;
 }
}
