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
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int* modeset_byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_NOP ; 
 struct tape_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tape_device*,struct tape_request*) ; 

int
FUNC7(struct tape_device *device, int mt_count)
{
	struct tape_request *request;

	if (mt_count < 0 || mt_count > 1) {
		FUNC0(6, "xcom parm\n");
		return -EINVAL;
	}
	request = FUNC3(2, 0);
	if (FUNC1(request))
		return FUNC2(request);
	request->op = TO_NOP;
	/* setup ccws */
	if (mt_count == 0)
		*device->modeset_byte &= ~0x08;
	else
		*device->modeset_byte |= 0x08;
	FUNC4(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
	FUNC5(request->cpaddr + 1, NOP, 0, NULL);
	/* execute it */
	return FUNC6(device, request);
}