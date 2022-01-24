#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {scalar_t__ chip_id; int flags; int /*<<< orphan*/  napi; TYPE_1__* pdev; } ;
struct net_device {int mtu; int /*<<< orphan*/  trans_start; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  B0_Y2_SP_LISR ; 
 scalar_t__ CHIP_ID_YUKON_FE ; 
 scalar_t__ CHIP_ID_YUKON_FE_P ; 
 int /*<<< orphan*/  DATA_BLIND_DEF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ETH_DATA_LEN ; 
 int ETH_JUMBO_MTU ; 
 int ETH_ZLEN ; 
 int GM_GPCR_RX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  GM_SERIAL_MODE ; 
 int GM_SMOD_JUMBO_ENA ; 
 int GM_SMOD_VLAN_ENA ; 
 int /*<<< orphan*/  IPG_DATA_DEF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_CTRL ; 
 int /*<<< orphan*/  RB_ENA_OP_MD ; 
 int SKY2_HW_RAM_BUFFER ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sky2_port* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int /*<<< orphan*/  FUNC12 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sky2_port*) ; 
 int FUNC14 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC16 (struct sky2_hw*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct net_device *dev, int new_mtu)
{
	struct sky2_port *sky2 = FUNC8(dev);
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

	if (!FUNC9(dev)) {
		dev->mtu = new_mtu;
		return 0;
	}

	imask = FUNC12(hw, B0_IMSK);
	FUNC17(hw, B0_IMSK, 0);

	dev->trans_start = jiffies;	/* prevent tx timeout */
	FUNC10(dev);
	FUNC6(&hw->napi);

	FUNC19(hw->pdev->irq);

	if (!(hw->flags & SKY2_HW_RAM_BUFFER))
		FUNC16(hw, port);

	ctl = FUNC4(hw, port, GM_GP_CTRL);
	FUNC5(hw, port, GM_GP_CTRL, ctl & ~GM_GPCR_RX_ENA);
	FUNC15(sky2);
	FUNC13(sky2);

	dev->mtu = new_mtu;

	mode = FUNC0(DATA_BLIND_DEF) |
		GM_SMOD_VLAN_ENA | FUNC1(IPG_DATA_DEF);

	if (dev->mtu > ETH_DATA_LEN)
		mode |= GM_SMOD_JUMBO_ENA;

	FUNC5(hw, port, GM_SERIAL_MODE, mode);

	FUNC18(hw, FUNC2(rxqaddr[port], RB_CTRL), RB_ENA_OP_MD);

	err = FUNC14(sky2);
	FUNC17(hw, B0_IMSK, imask);

	FUNC12(hw, B0_Y2_SP_LISR);
	FUNC7(&hw->napi);

	if (err)
		FUNC3(dev);
	else {
		FUNC5(hw, port, GM_GP_CTRL, ctl);

		FUNC11(dev);
	}

	return err;
}