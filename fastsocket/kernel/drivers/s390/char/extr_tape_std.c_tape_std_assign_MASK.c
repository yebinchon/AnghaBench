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
struct timer_list {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  cpdata; int /*<<< orphan*/  op; } ;
struct tape_device {int /*<<< orphan*/  cdev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSIGN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_ASSIGN ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_list*) ; 
 scalar_t__ jiffies ; 
 struct tape_request* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct tape_request*) ; 
 int /*<<< orphan*/  tape_std_assign_timeout ; 

int
FUNC11(struct tape_device *device)
{
	int                  rc;
	struct timer_list    timeout;
	struct tape_request *request;

	request = FUNC6(2, 11);
	if (FUNC1(request))
		return FUNC2(request);

	request->op = TO_ASSIGN;
	FUNC7(request->cpaddr, ASSIGN, 11, request->cpdata);
	FUNC8(request->cpaddr + 1, NOP, 0, NULL);

	/*
	 * The assign command sometimes blocks if the device is assigned
	 * to another host (actually this shouldn't happen but it does).
	 * So we set up a timeout for this call.
	 */
	FUNC5(&timeout);
	timeout.function = tape_std_assign_timeout;
	timeout.data     = (unsigned long) request;
	timeout.expires  = jiffies + 2 * HZ;
	FUNC3(&timeout);

	rc = FUNC9(device, request);

	FUNC4(&timeout);

	if (rc != 0) {
		FUNC0(3, "%08x: assign failed - device might be busy\n",
			device->cdev_id);
	} else {
		FUNC0(3, "%08x: Tape assigned\n", device->cdev_id);
	}
	FUNC10(request);
	return rc;
}