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
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  LED_OFF ; 
 scalar_t__ ide_activity ; 
 scalar_t__ ide_lastactivity ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ledtrig_ide ; 
 int /*<<< orphan*/  ledtrig_ide_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	if (ide_lastactivity != ide_activity) {
		ide_lastactivity = ide_activity;
		/* INT_MAX will set each LED to its maximum brightness */
		FUNC0(ledtrig_ide, INT_MAX);
		FUNC1(&ledtrig_ide_timer, jiffies + FUNC2(10));
	} else {
		FUNC0(ledtrig_ide, LED_OFF);
	}
}