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
struct tape_request {int /*<<< orphan*/  cpdata; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  SENSE ; 
 int /*<<< orphan*/  TO_MSEN ; 
 int /*<<< orphan*/  FUNC3 (struct tape_request*) ; 
 struct tape_request* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int FUNC7(struct tape_device *device)
{
	struct tape_request *request;
	int rc;

	request = FUNC4(1, 32);
	if (FUNC1(request)) {
		FUNC0(6, "MSEN fail\n");
		return FUNC2(request);
	}

	request->op = TO_MSEN;
	FUNC5(request->cpaddr, SENSE, 32, request->cpdata);
	rc = FUNC6(device, request);
	FUNC3(request);
	return rc;
}