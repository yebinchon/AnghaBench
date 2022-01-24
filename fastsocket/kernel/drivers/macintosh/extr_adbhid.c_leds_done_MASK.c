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
struct adb_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYB_LEDREG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void (*) (struct adb_request*),int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  led_request ; 
 int /*<<< orphan*/  leds_lock ; 
 int* leds_pending ; 
 int leds_req_pending ; 
 int* pending_devs ; 
 size_t pending_led_end ; 
 size_t pending_led_start ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct adb_request *req)
{
	int leds = 0, device = 0, pending = 0;
	unsigned long flags;

	FUNC2(&leds_lock, flags);

	if (pending_led_start != pending_led_end) {
		device = pending_devs[pending_led_start];
		leds = leds_pending[device] & 0xff;
		leds_pending[device] = 0;
		pending_led_start++;
		pending_led_start = (pending_led_start < 16) ? pending_led_start : 0;
		pending = leds_req_pending;
	} else
		leds_req_pending = 0;
	FUNC3(&leds_lock, flags);
	if (pending)
		FUNC1(&led_request, leds_done, 0, 3,
			    FUNC0(device, KEYB_LEDREG), 0xff, ~leds);
}