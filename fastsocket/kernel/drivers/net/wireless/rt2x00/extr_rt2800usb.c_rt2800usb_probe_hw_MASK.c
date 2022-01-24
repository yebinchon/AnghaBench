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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct rt2x00_dev {int /*<<< orphan*/  txdone_work; TYPE_1__ txstatus_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2800usb_tx_sta_fifo_timeout ; 
 int /*<<< orphan*/  rt2800usb_work_txdone ; 

__attribute__((used)) static int FUNC2(struct rt2x00_dev *rt2x00dev)
{
	int retval;

	retval = FUNC1(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Set txstatus timer function.
	 */
	rt2x00dev->txstatus_timer.function = rt2800usb_tx_sta_fifo_timeout;

	/*
	 * Overwrite TX done handler
	 */
	FUNC0(&rt2x00dev->txdone_work, rt2800usb_work_txdone);

	return 0;
}