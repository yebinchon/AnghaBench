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
struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct tape_request*) ; 

__attribute__((used)) static inline int
FUNC2(struct tape_device *device, struct tape_request *request)
{
	int rc;

	rc = FUNC0(device, request);
	FUNC1(request);
	return rc;
}