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
struct tape_request {scalar_t__ cpdata; scalar_t__ cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {scalar_t__ modeset_byte; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  READ_BLOCK_ID ; 
 int /*<<< orphan*/  TO_RBI ; 
 struct tape_request* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_request*) ; 

int
FUNC7(struct tape_device *device, __u64 *id)
{
	struct tape_request *request;
	int rc;

	request = FUNC2(3, 8);
	if (FUNC0(request))
		return FUNC1(request);
	request->op = TO_RBI;
	/* setup ccws */
	FUNC3(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
	FUNC3(request->cpaddr + 1, READ_BLOCK_ID, 8, request->cpdata);
	FUNC4(request->cpaddr + 2, NOP, 0, NULL);
	/* execute it */
	rc = FUNC5(device, request);
	if (rc == 0)
		/* Get result from read buffer. */
		*id = *(__u64 *) request->cpdata;
	FUNC6(request);
	return rc;
}