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
struct adb_request {struct adb_request* next; scalar_t__ reply_len; scalar_t__ complete; scalar_t__ sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADBREQ_NOSEND ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adb_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int autopoll_devs ; 
 int command_byte ; 
 struct adb_request* current_req ; 
 int FUNC3 (int) ; 
 struct adb_request* last_req ; 
 int /*<<< orphan*/  FUNC4 (struct adb_request*) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* No point polling the active device as it will never assert SRQ, so
	 * poll the next device in the autopoll list. This could leave us
	 * stuck in a polling loop if an unprobed device is asserting SRQ.
	 * In theory, that could only happen if a device was plugged in after
	 * probing started. Unplugging it again will break the cycle.
	 * (Simply polling the next higher device often ends up polling almost
	 * every device (after wrapping around), which takes too long.)
	 */
	int device_mask;
	int next_device;
	static struct adb_request req;

	if (!autopoll_devs) return;

	device_mask = (1 << (((command_byte & 0xF0) >> 4) + 1)) - 1;
	if (autopoll_devs & ~device_mask)
		next_device = FUNC3(autopoll_devs & ~device_mask) - 1;
	else
		next_device = FUNC3(autopoll_devs) - 1;

	FUNC1(FUNC4(&req));

	FUNC2(&req, NULL, ADBREQ_NOSEND, 1,
	            FUNC0(next_device, 0));

	req.sent = 0;
	req.complete = 0;
	req.reply_len = 0;
	req.next = current_req;

	if (current_req != NULL) {
		current_req = &req;
	} else {
		current_req = &req;
		last_req = &req;
	}
}