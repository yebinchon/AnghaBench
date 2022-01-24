#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct skge_port {int duplex; int speed; int wol; int port; int rx_csum; int /*<<< orphan*/  link_timer; int /*<<< orphan*/  advertising; int /*<<< orphan*/  flow_control; int /*<<< orphan*/  autoneg; TYPE_2__ rx_ring; TYPE_1__ tx_ring; int /*<<< orphan*/  msg_enable; struct skge_hw* hw; struct net_device* netdev; int /*<<< orphan*/  napi; } ;
struct skge_hw {scalar_t__ chip_id; scalar_t__ regs; struct net_device** dev; TYPE_3__* pdev; } ;
struct net_device {int features; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 scalar_t__ B2_MAC_1 ; 
 scalar_t__ CHIP_ID_GENESIS ; 
 int /*<<< orphan*/  DEFAULT_RX_RING_SIZE ; 
 int /*<<< orphan*/  DEFAULT_TX_RING_SIZE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FLOW_MODE_SYM_OR_REM ; 
 int /*<<< orphan*/  NAPI_WEIGHT ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TX_WATCHDOG ; 
 int WAKE_MAGIC ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  default_msg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct skge_port* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  skge_ethtool_ops ; 
 int /*<<< orphan*/  skge_netdev_ops ; 
 int /*<<< orphan*/  skge_poll ; 
 int /*<<< orphan*/  FUNC13 (struct skge_hw*) ; 
 int FUNC14 (struct skge_hw*) ; 
 int /*<<< orphan*/  xm_link_timer ; 

__attribute__((used)) static struct net_device *FUNC15(struct skge_hw *hw, int port,
				       int highmem)
{
	struct skge_port *skge;
	struct net_device *dev = FUNC1(sizeof(*skge));

	if (!dev) {
		FUNC2(&hw->pdev->dev, "etherdev alloc failed\n");
		return NULL;
	}

	FUNC0(dev, &hw->pdev->dev);
	dev->netdev_ops = &skge_netdev_ops;
	dev->ethtool_ops = &skge_ethtool_ops;
	dev->watchdog_timeo = TX_WATCHDOG;
	dev->irq = hw->pdev->irq;

	if (highmem)
		dev->features |= NETIF_F_HIGHDMA;

	skge = FUNC7(dev);
	FUNC10(dev, &skge->napi, skge_poll, NAPI_WEIGHT);
	skge->netdev = dev;
	skge->hw = hw;
	skge->msg_enable = FUNC9(debug, default_msg);

	skge->tx_ring.count = DEFAULT_TX_RING_SIZE;
	skge->rx_ring.count = DEFAULT_RX_RING_SIZE;

	/* Auto speed and flow control */
	skge->autoneg = AUTONEG_ENABLE;
	skge->flow_control = FLOW_MODE_SYM_OR_REM;
	skge->duplex = -1;
	skge->speed = -1;
	skge->advertising = FUNC13(hw);

	if (FUNC3(&hw->pdev->dev)) {
		skge->wol = FUNC14(hw) & WAKE_MAGIC;
		FUNC4(&hw->pdev->dev, skge->wol);
	}

	hw->dev[port] = dev;

	skge->port = port;

	/* Only used for Genesis XMAC */
	FUNC12(&skge->link_timer, xm_link_timer, (unsigned long) skge);

	if (hw->chip_id != CHIP_ID_GENESIS) {
		dev->features |= NETIF_F_IP_CSUM | NETIF_F_SG;
		skge->rx_csum = 1;
	}

	/* read the mac address */
	FUNC6(dev->dev_addr, hw->regs + B2_MAC_1 + port*8, ETH_ALEN);
	FUNC5(dev->perm_addr, dev->dev_addr, dev->addr_len);

	/* device is off until link detection */
	FUNC8(dev);
	FUNC11(dev);

	return dev;
}