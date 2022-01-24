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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 unsigned int const FIF_ALLMULTI ; 
 unsigned int const FIF_CONTROL ; 
 unsigned int const FIF_FCSFAIL ; 
 unsigned int const FIF_PLCPFAIL ; 
 unsigned int const FIF_PROMISC_IN_BSS ; 
 unsigned int const FIF_PSPOLL ; 
 int /*<<< orphan*/  RX_FILTER_CFG ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_ACK ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_BA ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_BAR ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_BROADCAST ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_CF_END ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_CF_END_ACK ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_CNTL ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_CRC_ERROR ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_CTS ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_DUPLICATE ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_MULTICAST ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_NOT_MY_BSSD ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_NOT_TO_ME ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_PHY_ERROR ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_PSPOLL ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_RTS ; 
 int /*<<< orphan*/  RX_FILTER_CFG_DROP_VER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct rt2x00_dev *rt2x00dev,
			  const unsigned int filter_flags)
{
	u32 reg;

	/*
	 * Start configuration steps.
	 * Note that the version error will always be dropped
	 * and broadcast frames will always be accepted since
	 * there is no filter for it at this time.
	 */
	FUNC0(rt2x00dev, RX_FILTER_CFG, &reg);
	FUNC2(&reg, RX_FILTER_CFG_DROP_CRC_ERROR,
			   !(filter_flags & FIF_FCSFAIL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_PHY_ERROR,
			   !(filter_flags & FIF_PLCPFAIL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_NOT_TO_ME,
			   !(filter_flags & FIF_PROMISC_IN_BSS));
	FUNC2(&reg, RX_FILTER_CFG_DROP_NOT_MY_BSSD, 0);
	FUNC2(&reg, RX_FILTER_CFG_DROP_VER_ERROR, 1);
	FUNC2(&reg, RX_FILTER_CFG_DROP_MULTICAST,
			   !(filter_flags & FIF_ALLMULTI));
	FUNC2(&reg, RX_FILTER_CFG_DROP_BROADCAST, 0);
	FUNC2(&reg, RX_FILTER_CFG_DROP_DUPLICATE, 1);
	FUNC2(&reg, RX_FILTER_CFG_DROP_CF_END_ACK,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_CF_END,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_ACK,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_CTS,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_RTS,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_PSPOLL,
			   !(filter_flags & FIF_PSPOLL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_BA, 0);
	FUNC2(&reg, RX_FILTER_CFG_DROP_BAR,
			   !(filter_flags & FIF_CONTROL));
	FUNC2(&reg, RX_FILTER_CFG_DROP_CNTL,
			   !(filter_flags & FIF_CONTROL));
	FUNC1(rt2x00dev, RX_FILTER_CFG, reg);
}