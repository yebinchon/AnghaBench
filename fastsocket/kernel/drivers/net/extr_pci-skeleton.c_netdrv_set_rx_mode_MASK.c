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
typedef  int u32 ;
struct netdrv_private {size_t chipset; int /*<<< orphan*/  lock; void* mmio_addr; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; int /*<<< orphan*/  name; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int RxConfigMask; } ;

/* Variables and functions */
 int AcceptAllPhys ; 
 int AcceptBroadcast ; 
 int AcceptMulticast ; 
 int AcceptMyPhys ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ MAR0 ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ RxConfig ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ multicast_filter_limit ; 
 struct netdrv_private* FUNC5 (struct net_device*) ; 
 int netdrv_rx_config ; 
 TYPE_1__* rtl_chip_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (struct net_device *dev)
{
	struct netdrv_private *tp = FUNC5(dev);
	void *ioaddr = tp->mmio_addr;
	u32 mc_filter[2];	/* Multicast hash filter */
	int i, rx_mode;
	u32 tmp;

	FUNC0 ("ENTER\n");

	FUNC0 ("%s:   netdrv_set_rx_mode(%4.4x) done -- Rx config %8.8x.\n",
			dev->name, dev->flags, FUNC1 (RxConfig));

	/* Note: do not reorder, GCC is clever about common statements. */
	if (dev->flags & IFF_PROMISC) {
		rx_mode =
		    AcceptBroadcast | AcceptMulticast | AcceptMyPhys |
		    AcceptAllPhys;
		mc_filter[1] = mc_filter[0] = 0xffffffff;
	} else if ((dev->mc_count > multicast_filter_limit)
		   || (dev->flags & IFF_ALLMULTI)) {
		/* Too many to filter perfectly -- accept all multicasts. */
		rx_mode = AcceptBroadcast | AcceptMulticast | AcceptMyPhys;
		mc_filter[1] = mc_filter[0] = 0xffffffff;
	} else {
		struct dev_mc_list *mclist;
		rx_mode = AcceptBroadcast | AcceptMulticast | AcceptMyPhys;
		mc_filter[1] = mc_filter[0] = 0;
		for (i = 0, mclist = dev->mc_list; mclist && i < dev->mc_count;
		     i++, mclist = mclist->next) {
			int bit_nr = FUNC3(ETH_ALEN, mclist->dmi_addr) >> 26;

			mc_filter[bit_nr >> 5] |= 1 << (bit_nr & 31);
		}
	}

	/* if called from irq handler, lock already acquired */
	if (!FUNC4 ())
		FUNC6 (&tp->lock);

	/* We can safely update without stopping the chip. */
	tmp = netdrv_rx_config | rx_mode |
		(FUNC1 (RxConfig) & rtl_chip_info[tp->chipset].RxConfigMask);
	FUNC2 (RxConfig, tmp);
	FUNC2 (MAR0 + 0, mc_filter[0]);
	FUNC2 (MAR0 + 4, mc_filter[1]);

	if (!FUNC4 ())
		FUNC7 (&tp->lock);

	FUNC0 ("EXIT\n");
}