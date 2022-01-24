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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  MCU_SLEEP ; 
 int /*<<< orphan*/  MCU_WAKEUP ; 
 int /*<<< orphan*/  TOKEN_RADIO_OFF ; 
 int /*<<< orphan*/  TOKEN_WAKEUP ; 
 int FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	int retval;

	/* Wait for DMA, ignore error until we initialize queues. */
	FUNC2(rt2x00dev);

	if (FUNC6(FUNC3(rt2x00dev)))
		return -EIO;

	retval = FUNC0(rt2x00dev);
	if (retval)
		return retval;

	/* After resume MCU_BOOT_SIGNAL will trash these. */
	FUNC5(rt2x00dev, H2M_MAILBOX_STATUS, ~0);
	FUNC5(rt2x00dev, H2M_MAILBOX_CID, ~0);

	FUNC1(rt2x00dev, MCU_SLEEP, TOKEN_RADIO_OFF, 0xff, 0x02);
	FUNC4(rt2x00dev, TOKEN_RADIO_OFF);

	FUNC1(rt2x00dev, MCU_WAKEUP, TOKEN_WAKEUP, 0, 0);
	FUNC4(rt2x00dev, TOKEN_WAKEUP);

	return retval;
}