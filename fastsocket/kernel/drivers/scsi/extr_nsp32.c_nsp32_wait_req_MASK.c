#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int BaseAddress; } ;
typedef  TYPE_1__ nsp32_hw_data ;

/* Variables and functions */
 int ASSERT ; 
 unsigned char BUSMON_REQ ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int NEGATE ; 
 int /*<<< orphan*/  NSP32_DEBUG_WAIT ; 
 int REQSACK_TIMEOUT_TIME ; 
 int /*<<< orphan*/  SCSI_BUS_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(nsp32_hw_data *data, int state)
{
	unsigned int  base      = data->BaseAddress;
	int           wait_time = 0;
	unsigned char bus, req_bit;

	if (!((state == ASSERT) || (state == NEGATE))) {
		FUNC1(KERN_ERR, "unknown state designation");
	}
	/* REQ is BIT(5) */
	req_bit = (state == ASSERT ? BUSMON_REQ : 0);

	do {
		bus = FUNC2(base, SCSI_BUS_MONITOR);
		if ((bus & BUSMON_REQ) == req_bit) {
			FUNC0(NSP32_DEBUG_WAIT, 
				  "wait_time: %d", wait_time);
			return;
		}
		FUNC3(1);
		wait_time++;
	} while (wait_time < REQSACK_TIMEOUT_TIME);

	FUNC1(KERN_WARNING, "wait REQ timeout, req_bit: 0x%x", req_bit);
}