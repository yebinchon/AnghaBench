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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00intf_conf {int sync; void** bssid; void** mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 unsigned int const CONFIG_UPDATE_BSSID ; 
 unsigned int const CONFIG_UPDATE_MAC ; 
 unsigned int const CONFIG_UPDATE_TYPE ; 
 int /*<<< orphan*/  MAC_CSR2 ; 
 int /*<<< orphan*/  MAC_CSR3_UNICAST_TO_ME_MASK ; 
 int /*<<< orphan*/  MAC_CSR4 ; 
 int /*<<< orphan*/  MAC_CSR5_BSS_ID_MASK ; 
 int /*<<< orphan*/  TXRX_CSR9 ; 
 int /*<<< orphan*/  TXRX_CSR9_TSF_SYNC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				struct rt2x00_intf *intf,
				struct rt2x00intf_conf *conf,
				const unsigned int flags)
{
	u32 reg;

	if (flags & CONFIG_UPDATE_TYPE) {
		/*
		 * Enable synchronisation.
		 */
		FUNC4(rt2x00dev, TXRX_CSR9, &reg);
		FUNC2(&reg, TXRX_CSR9_TSF_SYNC, conf->sync);
		FUNC5(rt2x00dev, TXRX_CSR9, reg);
	}

	if (flags & CONFIG_UPDATE_MAC) {
		reg = FUNC1(conf->mac[1]);
		FUNC2(&reg, MAC_CSR3_UNICAST_TO_ME_MASK, 0xff);
		conf->mac[1] = FUNC0(reg);

		FUNC3(rt2x00dev, MAC_CSR2,
					    conf->mac, sizeof(conf->mac));
	}

	if (flags & CONFIG_UPDATE_BSSID) {
		reg = FUNC1(conf->bssid[1]);
		FUNC2(&reg, MAC_CSR5_BSS_ID_MASK, 3);
		conf->bssid[1] = FUNC0(reg);

		FUNC3(rt2x00dev, MAC_CSR4,
					    conf->bssid, sizeof(conf->bssid));
	}
}