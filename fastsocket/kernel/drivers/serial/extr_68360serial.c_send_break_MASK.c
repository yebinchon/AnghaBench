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
typedef  int /*<<< orphan*/  ser_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 

__attribute__((used)) static void FUNC4(ser_info_t *info, unsigned int duration)
{
#ifdef SERIAL_DEBUG_SEND_BREAK
	printk("rs_send_break(%d) jiff=%lu...", duration, jiffies);
#endif
	FUNC0(info);
	FUNC2(duration);
	FUNC1(info);
#ifdef SERIAL_DEBUG_SEND_BREAK
	printk("done jiffies=%lu\n", jiffies);
#endif
}