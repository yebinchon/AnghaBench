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
struct tape_request {scalar_t__ rescnt; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int /*<<< orphan*/  modeset_byte; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FORSPACEBLOCK ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_DB ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_FSB ; 
 struct tape_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ccw1* FUNC5 (struct ccw1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ccw1* FUNC6 (struct ccw1*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct tape_request*) ; 

int
FUNC9(struct tape_device *device, int mt_count)
{
	struct tape_request *request;
	struct ccw1 *ccw;
	int rc;

	request = FUNC3(mt_count + 2, 0);
	if (FUNC1(request))
		return FUNC2(request);
	request->op = TO_FSB;
	/* setup ccws */
	ccw = FUNC4(request->cpaddr, MODE_SET_DB, 1,
			  device->modeset_byte);
	ccw = FUNC6(ccw, FORSPACEBLOCK, mt_count);
	ccw = FUNC5(ccw, NOP, 0, NULL);

	/* execute it */
	rc = FUNC7(device, request);
	if (rc == 0 && request->rescnt > 0) {
		FUNC0(3, "FSR over tapemark\n");
		rc = 1;
	}
	FUNC8(request);

	return rc;
}