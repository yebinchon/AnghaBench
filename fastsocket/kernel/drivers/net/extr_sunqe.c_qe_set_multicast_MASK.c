#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sunqe {int mconfig; scalar_t__ mregs; } ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {char* dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ MREGS_FILTER ; 
 scalar_t__ MREGS_IACONFIG ; 
 int MREGS_IACONFIG_ACHNGE ; 
 int MREGS_IACONFIG_LARESET ; 
 scalar_t__ MREGS_MCONFIG ; 
 int MREGS_MCONFIG_PROMISC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,char*) ; 
 struct sunqe* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct sunqe *qep = FUNC2(dev);
	struct dev_mc_list *dmi = dev->mc_list;
	u8 new_mconfig = qep->mconfig;
	char *addrs;
	int i;
	u32 crc;

	/* Lock out others. */
	FUNC3(dev);

	if ((dev->flags & IFF_ALLMULTI) || (dev->mc_count > 64)) {
		FUNC6(MREGS_IACONFIG_ACHNGE | MREGS_IACONFIG_LARESET,
			    qep->mregs + MREGS_IACONFIG);
		while ((FUNC5(qep->mregs + MREGS_IACONFIG) & MREGS_IACONFIG_ACHNGE) != 0)
			FUNC0();
		for (i = 0; i < 8; i++)
			FUNC6(0xff, qep->mregs + MREGS_FILTER);
		FUNC6(0, qep->mregs + MREGS_IACONFIG);
	} else if (dev->flags & IFF_PROMISC) {
		new_mconfig |= MREGS_MCONFIG_PROMISC;
	} else {
		u16 hash_table[4];
		u8 *hbytes = (unsigned char *) &hash_table[0];

		for (i = 0; i < 4; i++)
			hash_table[i] = 0;

		for (i = 0; i < dev->mc_count; i++) {
			addrs = dmi->dmi_addr;
			dmi = dmi->next;

			if (!(*addrs & 1))
				continue;
			crc = FUNC1(6, addrs);
			crc >>= 26;
			hash_table[crc >> 4] |= 1 << (crc & 0xf);
		}
		/* Program the qe with the new filter value. */
		FUNC6(MREGS_IACONFIG_ACHNGE | MREGS_IACONFIG_LARESET,
			    qep->mregs + MREGS_IACONFIG);
		while ((FUNC5(qep->mregs + MREGS_IACONFIG) & MREGS_IACONFIG_ACHNGE) != 0)
			FUNC0();
		for (i = 0; i < 8; i++) {
			u8 tmp = *hbytes++;
			FUNC6(tmp, qep->mregs + MREGS_FILTER);
		}
		FUNC6(0, qep->mregs + MREGS_IACONFIG);
	}

	/* Any change of the logical address filter, the physical address,
	 * or enabling/disabling promiscuous mode causes the MACE to disable
	 * the receiver.  So we must re-enable them here or else the MACE
	 * refuses to listen to anything on the network.  Sheesh, took
	 * me a day or two to find this bug.
	 */
	qep->mconfig = new_mconfig;
	FUNC6(qep->mconfig, qep->mregs + MREGS_MCONFIG);

	/* Let us get going again. */
	FUNC4(dev);
}