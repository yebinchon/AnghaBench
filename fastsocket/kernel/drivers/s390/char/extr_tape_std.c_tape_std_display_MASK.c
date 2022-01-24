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
struct tape_request {scalar_t__ cpaddr; scalar_t__ cpdata; int /*<<< orphan*/  op; } ;
struct tape_device {int dummy; } ;
struct display_struct {unsigned char cntrl; int /*<<< orphan*/  message2; int /*<<< orphan*/  message1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  LOAD_DISPLAY ; 
 int /*<<< orphan*/  NOP ; 
 int FUNC3 (struct tape_request*) ; 
 int /*<<< orphan*/  TO_DIS ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct tape_request* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct tape_request*) ; 

int
FUNC10(struct tape_device *device, struct display_struct *disp)
{
	struct tape_request *request;
	int rc;

	request = FUNC5(2, 17);
	if (FUNC2(request)) {
		FUNC1(3, "TAPE: load display failed\n");
		return FUNC3(request);
	}
	request->op = TO_DIS;

	*(unsigned char *) request->cpdata = disp->cntrl;
	FUNC1(5, "TAPE: display cntrl=%04x\n", disp->cntrl);
	FUNC4(((unsigned char *) request->cpdata) + 1, disp->message1, 8);
	FUNC4(((unsigned char *) request->cpdata) + 9, disp->message2, 8);
	FUNC0(((unsigned char*) request->cpdata) + 1, 16);

	FUNC6(request->cpaddr, LOAD_DISPLAY, 17, request->cpdata);
	FUNC7(request->cpaddr + 1, NOP, 0, NULL);

	rc = FUNC8(device, request);
	FUNC9(request);
	return rc;
}