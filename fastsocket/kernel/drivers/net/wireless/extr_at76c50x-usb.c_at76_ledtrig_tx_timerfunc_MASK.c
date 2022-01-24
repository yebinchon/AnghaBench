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

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ledtrig_tx ; 
 int /*<<< orphan*/  ledtrig_tx_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int tx_activity ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	static int tx_lastactivity;

	if (tx_lastactivity != tx_activity) {
		tx_lastactivity = tx_activity;
		FUNC0(ledtrig_tx, LED_FULL);
		FUNC1(&ledtrig_tx_timer, jiffies + HZ / 4);
	} else
		FUNC0(ledtrig_tx, LED_OFF);
}