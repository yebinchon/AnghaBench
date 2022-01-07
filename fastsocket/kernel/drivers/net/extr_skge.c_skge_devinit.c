
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; } ;
struct TYPE_4__ {int count; } ;
struct skge_port {int duplex; int speed; int wol; int port; int rx_csum; int link_timer; int advertising; int flow_control; int autoneg; TYPE_2__ rx_ring; TYPE_1__ tx_ring; int msg_enable; struct skge_hw* hw; struct net_device* netdev; int napi; } ;
struct skge_hw {scalar_t__ chip_id; scalar_t__ regs; struct net_device** dev; TYPE_3__* pdev; } ;
struct net_device {int features; int addr_len; int dev_addr; int perm_addr; int irq; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_6__ {int dev; int irq; } ;


 int AUTONEG_ENABLE ;
 scalar_t__ B2_MAC_1 ;
 scalar_t__ CHIP_ID_GENESIS ;
 int DEFAULT_RX_RING_SIZE ;
 int DEFAULT_TX_RING_SIZE ;
 int ETH_ALEN ;
 int FLOW_MODE_SYM_OR_REM ;
 int NAPI_WEIGHT ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_WATCHDOG ;
 int WAKE_MAGIC ;
 struct net_device* alloc_etherdev (int) ;
 int debug ;
 int default_msg ;
 int dev_err (int *,char*) ;
 scalar_t__ device_can_wakeup (int *) ;
 int device_set_wakeup_enable (int *,int) ;
 int memcpy (int ,int ,int ) ;
 int memcpy_fromio (int ,scalar_t__,int ) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int netif_stop_queue (struct net_device*) ;
 int setup_timer (int *,int ,unsigned long) ;
 int skge_ethtool_ops ;
 int skge_netdev_ops ;
 int skge_poll ;
 int skge_supported_modes (struct skge_hw*) ;
 int wol_supported (struct skge_hw*) ;
 int xm_link_timer ;

__attribute__((used)) static struct net_device *skge_devinit(struct skge_hw *hw, int port,
           int highmem)
{
 struct skge_port *skge;
 struct net_device *dev = alloc_etherdev(sizeof(*skge));

 if (!dev) {
  dev_err(&hw->pdev->dev, "etherdev alloc failed\n");
  return ((void*)0);
 }

 SET_NETDEV_DEV(dev, &hw->pdev->dev);
 dev->netdev_ops = &skge_netdev_ops;
 dev->ethtool_ops = &skge_ethtool_ops;
 dev->watchdog_timeo = TX_WATCHDOG;
 dev->irq = hw->pdev->irq;

 if (highmem)
  dev->features |= NETIF_F_HIGHDMA;

 skge = netdev_priv(dev);
 netif_napi_add(dev, &skge->napi, skge_poll, NAPI_WEIGHT);
 skge->netdev = dev;
 skge->hw = hw;
 skge->msg_enable = netif_msg_init(debug, default_msg);

 skge->tx_ring.count = DEFAULT_TX_RING_SIZE;
 skge->rx_ring.count = DEFAULT_RX_RING_SIZE;


 skge->autoneg = AUTONEG_ENABLE;
 skge->flow_control = FLOW_MODE_SYM_OR_REM;
 skge->duplex = -1;
 skge->speed = -1;
 skge->advertising = skge_supported_modes(hw);

 if (device_can_wakeup(&hw->pdev->dev)) {
  skge->wol = wol_supported(hw) & WAKE_MAGIC;
  device_set_wakeup_enable(&hw->pdev->dev, skge->wol);
 }

 hw->dev[port] = dev;

 skge->port = port;


 setup_timer(&skge->link_timer, xm_link_timer, (unsigned long) skge);

 if (hw->chip_id != CHIP_ID_GENESIS) {
  dev->features |= NETIF_F_IP_CSUM | NETIF_F_SG;
  skge->rx_csum = 1;
 }


 memcpy_fromio(dev->dev_addr, hw->regs + B2_MAC_1 + port*8, ETH_ALEN);
 memcpy(dev->perm_addr, dev->dev_addr, dev->addr_len);


 netif_carrier_off(dev);
 netif_stop_queue(dev);

 return dev;
}
