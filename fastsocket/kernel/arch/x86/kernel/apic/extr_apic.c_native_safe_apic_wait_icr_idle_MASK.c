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

/* Variables and functions */
 int /*<<< orphan*/  APIC_ICR ; 
 int APIC_ICR_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

u32 FUNC2(void)
{
	u32 send_status;
	int timeout;

	timeout = 0;
	do {
		send_status = FUNC0(APIC_ICR) & APIC_ICR_BUSY;
		if (!send_status)
			break;
		FUNC1(100);
	} while (timeout++ < 1000);

	return send_status;
}