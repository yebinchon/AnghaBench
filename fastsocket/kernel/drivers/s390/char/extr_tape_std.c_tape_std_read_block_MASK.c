#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tape_request {scalar_t__ cpaddr; int /*<<< orphan*/  op; } ;
struct TYPE_2__ {int /*<<< orphan*/  idal_buf; } ;
struct tape_device {TYPE_1__ char_data; int /*<<< orphan*/  modeset_byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  READ_FORWARD ; 
 int /*<<< orphan*/  TO_RFO ; 
 struct tape_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct tape_request *
FUNC6(struct tape_device *device, size_t count)
{
	struct tape_request *request;

	/*
	 * We have to alloc 4 ccws in order to be able to transform request
	 * into a read backward request in error case.
	 */
	request = FUNC3(4, 0);
	if (FUNC2(request)) {
		FUNC1(6, "xrbl fail");
		return request;
	}
	request->op = TO_RFO;
	FUNC4(request->cpaddr, MODE_SET_DB, 1, device->modeset_byte);
	FUNC5(request->cpaddr + 1, READ_FORWARD,
			  device->char_data.idal_buf);
	FUNC0(6, "xrbl ccwg\n");
	return request;
}