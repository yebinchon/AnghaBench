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
struct rt2x00_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  txstatus_timer; int /*<<< orphan*/  txdone_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  txstatus_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  TX_STATUS_READING ; 
 int /*<<< orphan*/  TX_STA_FIFO_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct rt2x00_dev *rt2x00dev,
						 int urb_status, u32 tx_status)
{
	bool valid;

	if (urb_status) {
		FUNC8(rt2x00dev, "TX status read failed %d\n",
			    urb_status);

		goto stop_reading;
	}

	valid = FUNC7(tx_status, TX_STA_FIFO_VALID);
	if (valid) {
		if (!FUNC2(&rt2x00dev->txstatus_fifo, &tx_status))
			FUNC8(rt2x00dev, "TX status FIFO overrun\n");

		FUNC4(rt2x00dev->workqueue, &rt2x00dev->txdone_work);

		/* Reschedule urb to read TX status again instantly */
		return true;
	}

	/* Check if there is any entry that timedout waiting on TX status */
	if (FUNC6(rt2x00dev))
		FUNC4(rt2x00dev->workqueue, &rt2x00dev->txdone_work);

	if (FUNC5(rt2x00dev)) {
		/* Read register after 250 us */
		FUNC1(&rt2x00dev->txstatus_timer, FUNC3(0, 250000),
			      HRTIMER_MODE_REL);
		return false;
	}

stop_reading:
	FUNC0(TX_STATUS_READING, &rt2x00dev->flags);
	/*
	 * There is small race window above, between txstatus pending check and
	 * clear_bit someone could do rt2x00usb_interrupt_txdone, so recheck
	 * here again if status reading is needed.
	 */
	if (FUNC5(rt2x00dev) &&
	    !FUNC9(TX_STATUS_READING, &rt2x00dev->flags))
		return true;
	else
		return false;
}