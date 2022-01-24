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
struct usbnet {TYPE_1__* net; scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int /*<<< orphan*/  mac_cr_lock; } ;
struct net_device {int dummy; } ;
struct dev_mc_list {scalar_t__ dmi_addrlen; struct dev_mc_list* next; int /*<<< orphan*/  dmi_addr; } ;
struct TYPE_2__ {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int /*<<< orphan*/  HASHH ; 
 int /*<<< orphan*/  HASHL ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_HPFILT_ ; 
 int MAC_CR_MCPAS_ ; 
 int MAC_CR_PRMS_ ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct usbnet*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev)
{
	struct usbnet *dev = FUNC2(netdev);
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	u32 hash_hi = 0;
	u32 hash_lo = 0;
	unsigned long flags;

	FUNC6(&pdata->mac_cr_lock, flags);

	if (dev->net->flags & IFF_PROMISC) {
		if (FUNC3(dev))
			FUNC0(dev, "promiscuous mode enabled");
		pdata->mac_cr |= MAC_CR_PRMS_;
		pdata->mac_cr &= ~(MAC_CR_MCPAS_ | MAC_CR_HPFILT_);
	} else if (dev->net->flags & IFF_ALLMULTI) {
		if (FUNC3(dev))
			FUNC0(dev, "receive all multicast enabled");
		pdata->mac_cr |= MAC_CR_MCPAS_;
		pdata->mac_cr &= ~(MAC_CR_PRMS_ | MAC_CR_HPFILT_);
	} else if (dev->net->mc_count > 0) {
		struct dev_mc_list *mc_list = dev->net->mc_list;
		int count = 0;

		pdata->mac_cr |= MAC_CR_HPFILT_;
		pdata->mac_cr &= ~(MAC_CR_PRMS_ | MAC_CR_MCPAS_);

		while (mc_list) {
			count++;
			if (mc_list->dmi_addrlen == ETH_ALEN) {
				u32 bitnum = FUNC4(mc_list->dmi_addr);
				u32 mask = 0x01 << (bitnum & 0x1F);
				if (bitnum & 0x20)
					hash_hi |= mask;
				else
					hash_lo |= mask;
			} else {
				FUNC1(dev, "dmi_addrlen != 6");
			}
			mc_list = mc_list->next;
		}

		if (count != ((u32)dev->net->mc_count))
			FUNC1(dev, "mc_count != dev->mc_count");

		if (FUNC3(dev))
			FUNC0(dev, "HASHH=0x%08X, HASHL=0x%08X", hash_hi,
				hash_lo);
	} else {
		if (FUNC3(dev))
			FUNC0(dev, "receive own packets only");
		pdata->mac_cr &=
			~(MAC_CR_PRMS_ | MAC_CR_MCPAS_ | MAC_CR_HPFILT_);
	}

	FUNC7(&pdata->mac_cr_lock, flags);

	/* Initiate async writes, as we can't wait for completion here */
	FUNC5(dev, HASHH, &hash_hi);
	FUNC5(dev, HASHL, &hash_lo);
	FUNC5(dev, MAC_CR, &pdata->mac_cr);
}