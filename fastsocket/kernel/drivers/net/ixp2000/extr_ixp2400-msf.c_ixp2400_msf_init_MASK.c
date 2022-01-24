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
typedef  int u32 ;
struct ixp2400_msf_parameters {int rx_poll_ports; int rx_mode; int* rx_channel_mode; int tx_poll_ports; int tx_mode; int* tx_channel_mode; } ;

/* Variables and functions */
 scalar_t__ IXP2000_MSF_RX_CONTROL ; 
 scalar_t__ IXP2000_MSF_RX_MPHY_POLL_LIMIT ; 
 scalar_t__ IXP2000_MSF_RX_UP_CONTROL_0 ; 
 scalar_t__ IXP2000_MSF_TX_CONTROL ; 
 scalar_t__ IXP2000_MSF_TX_MPHY_POLL_LIMIT ; 
 scalar_t__ IXP2000_MSF_TX_UP_CONTROL_0 ; 
 scalar_t__ IXP2000_RESET0 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixp2400_msf_parameters*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixp2400_msf_parameters*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixp2400_msf_parameters*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixp2400_msf_parameters*) ; 

void FUNC6(struct ixp2400_msf_parameters *mp)
{
	u32 value;
	int i;

	/*
	 * Init the RX/TX PLLs based on the passed parameter block.
	 */
	FUNC5(mp);

	/*
	 * Reset MSF.  Bit 7 in IXP_RESET_0 resets the MSF.
	 */
	value = FUNC0(IXP2000_RESET0);
	FUNC1(IXP2000_RESET0, value | 0x80);
	FUNC1(IXP2000_RESET0, value & ~0x80);

	/*
	 * Initialise the RX section.
	 */
	FUNC1(IXP2000_MSF_RX_MPHY_POLL_LIMIT, mp->rx_poll_ports - 1);
	FUNC1(IXP2000_MSF_RX_CONTROL, mp->rx_mode);
	for (i = 0; i < 4; i++) {
		FUNC1(IXP2000_MSF_RX_UP_CONTROL_0 + i,
						mp->rx_channel_mode[i]);
	}
	FUNC4(mp);
	FUNC2(mp);

	/*
	 * Initialise the TX section.
	 */
	FUNC1(IXP2000_MSF_TX_MPHY_POLL_LIMIT, mp->tx_poll_ports - 1);
	FUNC1(IXP2000_MSF_TX_CONTROL, mp->tx_mode);
	for (i = 0; i < 4; i++) {
		FUNC1(IXP2000_MSF_TX_UP_CONTROL_0 + i,
						mp->tx_channel_mode[i]);
	}
	FUNC3(mp);
}