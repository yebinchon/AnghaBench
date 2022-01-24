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
struct rt2x00_dev {int /*<<< orphan*/  txstatus_tasklet; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
	if (FUNC0(rt2x00dev))
		FUNC1(&rt2x00dev->txstatus_tasklet);

	/*
	 * No need to enable the tx status interrupt here as we always
	 * leave it enabled to minimize the possibility of a tx status
	 * register overflow. See comment in interrupt handler.
	 */
}