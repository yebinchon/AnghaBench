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
struct tape_request {scalar_t__ op; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ TO_RFO ; 
 int FUNC0 (struct tape_request*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tape_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int
FUNC3(struct tape_device *device,
			    struct tape_request *request)
{
	if (request->op == TO_RFO) {
		/*
		 * We did read forward, but the data could not be read
		 * *correctly*. We transform the request to a read backward
		 * and try again.
		 */
		FUNC2(device, request);
		return FUNC1(request);
	}

	/*
	 * We tried to read forward and backward, but hat no
	 * success -> failed.
	 */
	return FUNC0(request, -EIO);
}