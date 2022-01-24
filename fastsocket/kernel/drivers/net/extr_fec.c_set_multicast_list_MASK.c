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
struct net_device {int flags; unsigned int mc_count; struct dev_mc_list* mc_list; } ;
struct fec_enet_private {scalar_t__ hwp; } ;
struct dev_mc_list {int* dmi_addr; unsigned int dmi_addrlen; struct dev_mc_list* next; } ;

/* Variables and functions */
 unsigned int CRC32_POLY ; 
 scalar_t__ FEC_GRP_HASH_TABLE_HIGH ; 
 scalar_t__ FEC_GRP_HASH_TABLE_LOW ; 
 scalar_t__ FEC_R_CNTRL ; 
 int HASH_BITS ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC0(dev);
	struct dev_mc_list *dmi;
	unsigned int i, j, bit, data, crc, tmp;
	unsigned char hash;

	if (dev->flags & IFF_PROMISC) {
		tmp = FUNC1(fep->hwp + FEC_R_CNTRL);
		tmp |= 0x8;
		FUNC2(tmp, fep->hwp + FEC_R_CNTRL);
		return;
	}

	tmp = FUNC1(fep->hwp + FEC_R_CNTRL);
	tmp &= ~0x8;
	FUNC2(tmp, fep->hwp + FEC_R_CNTRL);

	if (dev->flags & IFF_ALLMULTI) {
		/* Catch all multicast addresses, so set the
		 * filter to all 1's
		 */
		FUNC2(0xffffffff, fep->hwp + FEC_GRP_HASH_TABLE_HIGH);
		FUNC2(0xffffffff, fep->hwp + FEC_GRP_HASH_TABLE_LOW);

		return;
	}

	/* Clear filter and add the addresses in hash register
	 */
	FUNC2(0, fep->hwp + FEC_GRP_HASH_TABLE_HIGH);
	FUNC2(0, fep->hwp + FEC_GRP_HASH_TABLE_LOW);

	dmi = dev->mc_list;

	for (j = 0; j < dev->mc_count; j++, dmi = dmi->next) {
		/* Only support group multicast for now */
		if (!(dmi->dmi_addr[0] & 1))
			continue;

		/* calculate crc32 value of mac address */
		crc = 0xffffffff;

		for (i = 0; i < dmi->dmi_addrlen; i++) {
			data = dmi->dmi_addr[i];
			for (bit = 0; bit < 8; bit++, data >>= 1) {
				crc = (crc >> 1) ^
				(((crc ^ data) & 1) ? CRC32_POLY : 0);
			}
		}

		/* only upper 6 bits (HASH_BITS) are used
		 * which point to specific bit in he hash registers
		 */
		hash = (crc >> (32 - HASH_BITS)) & 0x3f;

		if (hash > 31) {
			tmp = FUNC1(fep->hwp + FEC_GRP_HASH_TABLE_HIGH);
			tmp |= 1 << (hash - 32);
			FUNC2(tmp, fep->hwp + FEC_GRP_HASH_TABLE_HIGH);
		} else {
			tmp = FUNC1(fep->hwp + FEC_GRP_HASH_TABLE_LOW);
			tmp |= 1 << hash;
			FUNC2(tmp, fep->hwp + FEC_GRP_HASH_TABLE_LOW);
		}
	}
}