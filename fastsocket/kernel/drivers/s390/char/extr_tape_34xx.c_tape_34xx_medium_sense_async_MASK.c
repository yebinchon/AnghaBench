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
struct tape_request {int /*<<< orphan*/ * callback_data; void* callback; int /*<<< orphan*/  cpdata; int /*<<< orphan*/  cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  SENSE ; 
 int /*<<< orphan*/  TO_MSEN ; 
 scalar_t__ __tape_34xx_medium_sense ; 
 struct tape_request* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static void FUNC5(struct tape_device *device)
{
	struct tape_request *request;

	request = FUNC2(1, 32);
	if (FUNC1(request)) {
		FUNC0(6, "MSEN fail\n");
		return;
	}

	request->op = TO_MSEN;
	FUNC3(request->cpaddr, SENSE, 32, request->cpdata);
	request->callback = (void *) __tape_34xx_medium_sense;
	request->callback_data = NULL;
	FUNC4(device, request);
}