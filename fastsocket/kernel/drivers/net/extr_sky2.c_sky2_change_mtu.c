
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; int flags; int napi; TYPE_1__* pdev; } ;
struct net_device {int mtu; int trans_start; } ;
struct TYPE_2__ {int irq; } ;


 int B0_IMSK ;
 int B0_Y2_SP_LISR ;
 scalar_t__ CHIP_ID_YUKON_FE ;
 scalar_t__ CHIP_ID_YUKON_FE_P ;
 int DATA_BLIND_DEF ;
 int DATA_BLIND_VAL (int ) ;
 int EINVAL ;
 int ETH_DATA_LEN ;
 int ETH_JUMBO_MTU ;
 int ETH_ZLEN ;
 int GM_GPCR_RX_ENA ;
 int GM_GP_CTRL ;
 int GM_SERIAL_MODE ;
 int GM_SMOD_JUMBO_ENA ;
 int GM_SMOD_VLAN_ENA ;
 int IPG_DATA_DEF ;
 int IPG_DATA_VAL (int ) ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 int RB_ENA_OP_MD ;
 int SKY2_HW_RAM_BUFFER ;
 int dev_close (struct net_device*) ;
 int gma_read16 (struct sky2_hw*,unsigned int,int ) ;
 int gma_write16 (struct sky2_hw*,unsigned int,int ,int) ;
 int jiffies ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int * rxqaddr ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_rx_clean (struct sky2_port*) ;
 int sky2_rx_start (struct sky2_port*) ;
 int sky2_rx_stop (struct sky2_port*) ;
 int sky2_set_tx_stfwd (struct sky2_hw*,unsigned int) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int sky2_change_mtu(struct net_device *dev, int new_mtu)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 int err;
 u16 ctl, mode;
 u32 imask;

 if (new_mtu < ETH_ZLEN || new_mtu > ETH_JUMBO_MTU)
  return -EINVAL;

 if (new_mtu > ETH_DATA_LEN &&
     (hw->chip_id == CHIP_ID_YUKON_FE ||
      hw->chip_id == CHIP_ID_YUKON_FE_P))
  return -EINVAL;

 if (!netif_running(dev)) {
  dev->mtu = new_mtu;
  return 0;
 }

 imask = sky2_read32(hw, B0_IMSK);
 sky2_write32(hw, B0_IMSK, 0);

 dev->trans_start = jiffies;
 netif_stop_queue(dev);
 napi_disable(&hw->napi);

 synchronize_irq(hw->pdev->irq);

 if (!(hw->flags & SKY2_HW_RAM_BUFFER))
  sky2_set_tx_stfwd(hw, port);

 ctl = gma_read16(hw, port, GM_GP_CTRL);
 gma_write16(hw, port, GM_GP_CTRL, ctl & ~GM_GPCR_RX_ENA);
 sky2_rx_stop(sky2);
 sky2_rx_clean(sky2);

 dev->mtu = new_mtu;

 mode = DATA_BLIND_VAL(DATA_BLIND_DEF) |
  GM_SMOD_VLAN_ENA | IPG_DATA_VAL(IPG_DATA_DEF);

 if (dev->mtu > ETH_DATA_LEN)
  mode |= GM_SMOD_JUMBO_ENA;

 gma_write16(hw, port, GM_SERIAL_MODE, mode);

 sky2_write8(hw, RB_ADDR(rxqaddr[port], RB_CTRL), RB_ENA_OP_MD);

 err = sky2_rx_start(sky2);
 sky2_write32(hw, B0_IMSK, imask);

 sky2_read32(hw, B0_Y2_SP_LISR);
 napi_enable(&hw->napi);

 if (err)
  dev_close(dev);
 else {
  gma_write16(hw, port, GM_GP_CTRL, ctl);

  netif_wake_queue(dev);
 }

 return err;
}
