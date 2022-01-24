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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int /*<<< orphan*/  intf_ap_count; } ;

/* Variables and functions */
 unsigned int const FIF_ALLMULTI ; 
 unsigned int const FIF_CONTROL ; 
 unsigned int const FIF_FCSFAIL ; 
 unsigned int const FIF_PLCPFAIL ; 
 unsigned int const FIF_PROMISC_IN_BSS ; 
 int /*<<< orphan*/  TXRX_CSR2 ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_BROADCAST ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_CONTROL ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_CRC ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_MULTICAST ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_NOT_TO_ME ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_PHYSICAL ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_TODS ; 
 int /*<<< orphan*/  TXRX_CSR2_DROP_VERSION_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev,
				    const unsigned int filter_flags)
{
	u16 reg;

	/*
	 * Start configuration steps.
	 * Note that the version error will always be dropped
	 * and broadcast frames will always be accepted since
	 * there is no filter for it at this time.
	 */
	FUNC0(rt2x00dev, TXRX_CSR2, &reg);
	FUNC2(&reg, TXRX_CSR2_DROP_CRC,
			   !(filter_flags & FIF_FCSFAIL));
	FUNC2(&reg, TXRX_CSR2_DROP_PHYSICAL,
			   !(filter_flags & FIF_PLCPFAIL));
	FUNC2(&reg, TXRX_CSR2_DROP_CONTROL,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, TXRX_CSR2_DROP_NOT_TO_ME,
			   !(filter_flags & FIF_PROMISC_IN_BSS));
	FUNC2(&reg, TXRX_CSR2_DROP_TODS,
			   !(filter_flags & FIF_PROMISC_IN_BSS) &&
			   !rt2x00dev->intf_ap_count);
	FUNC2(&reg, TXRX_CSR2_DROP_VERSION_ERROR, 1);
	FUNC2(&reg, TXRX_CSR2_DROP_MULTICAST,
			   !(filter_flags & FIF_ALLMULTI));
	FUNC2(&reg, TXRX_CSR2_DROP_BROADCAST, 0);
	FUNC1(rt2x00dev, TXRX_CSR2, reg);
}