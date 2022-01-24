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
struct mapped_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DM_TYPE_REQUEST_BASED ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 

int FUNC3(struct mapped_device *md)
{
	if ((FUNC1(md) == DM_TYPE_REQUEST_BASED) &&
	    !FUNC2(md)) {
		FUNC0("Cannot initialize queue for request-based mapped device");
		return -EINVAL;
	}

	return 0;
}