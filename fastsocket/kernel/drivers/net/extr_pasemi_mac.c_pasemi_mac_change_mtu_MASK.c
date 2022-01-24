#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pasemi_mac {int /*<<< orphan*/  napi; int /*<<< orphan*/  dma_if; scalar_t__ bufsz; int /*<<< orphan*/  num_cs; } ;
struct net_device {int mtu; } ;
struct TYPE_3__ {scalar_t__ next_to_fill; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ LOCAL_SKB_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PAS_DMA_RXINT_RCMDSTA_EN ; 
 int /*<<< orphan*/  PAS_MAC_CFG_MACCFG ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int PAS_MAC_CFG_MACCFG_MAXF_M ; 
 int PE_MAX_MTU ; 
 int PE_MIN_MTU ; 
 scalar_t__ RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pasemi_mac* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC10 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC11 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC12 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct pasemi_mac*) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC16 (struct pasemi_mac*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct pasemi_mac*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC20(struct net_device *dev, int new_mtu)
{
	struct pasemi_mac *mac = FUNC4(dev);
	unsigned int reg;
	unsigned int rcmdsta = 0;
	int running;
	int ret = 0;

	if (new_mtu < PE_MIN_MTU || new_mtu > PE_MAX_MTU)
		return -EINVAL;

	running = FUNC5(dev);

	if (running) {
		/* Need to stop the interface, clean out all already
		 * received buffers, free all unused buffers on the RX
		 * interface ring, then finally re-fill the rx ring with
		 * the new-size buffers and restart.
		 */

		FUNC2(&mac->napi);
		FUNC7(dev);
		FUNC10(mac);

		rcmdsta = FUNC15(FUNC0(mac->dma_if));
		FUNC12(mac);
		FUNC8(FUNC17(mac), RX_RING_SIZE);
		FUNC9(mac);

	}

	/* Setup checksum channels if large MTU and none already allocated */
	if (new_mtu > 1500 && !mac->num_cs) {
		FUNC14(mac);
		if (!mac->num_cs) {
			ret = -ENOMEM;
			goto out;
		}
	}

	/* Change maxf, i.e. what size frames are accepted.
	 * Need room for ethernet header and CRC word
	 */
	reg = FUNC16(mac, PAS_MAC_CFG_MACCFG);
	reg &= ~PAS_MAC_CFG_MACCFG_MAXF_M;
	reg |= FUNC1(new_mtu + ETH_HLEN + 4);
	FUNC19(mac, PAS_MAC_CFG_MACCFG, reg);

	dev->mtu = new_mtu;
	/* MTU + ETH_HLEN + VLAN_HLEN + 2 64B cachelines */
	mac->bufsz = new_mtu + ETH_HLEN + ETH_FCS_LEN + LOCAL_SKB_ALIGN + 128;

out:
	if (running) {
		FUNC18(FUNC0(mac->dma_if),
			      rcmdsta | PAS_DMA_RXINT_RCMDSTA_EN);

		FUNC17(mac)->next_to_fill = 0;
		FUNC13(dev, RX_RING_SIZE-1);

		FUNC3(&mac->napi);
		FUNC6(dev);
		FUNC11(mac);
	}

	return ret;
}