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
struct xencomm_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xc_area ; 
 int FUNC1 (unsigned int,struct xencomm_handle*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,void*,unsigned int,struct xencomm_handle**) ; 

int
FUNC3(unsigned int cmd, void *op,
				 unsigned int count)
{
	int rc;
	struct xencomm_handle *desc;
	FUNC0(xc_area, 2);

	rc = FUNC2(&xc_area, cmd, op, count, &desc);
	if (rc)
		return rc;

	return FUNC1(cmd, desc, count);
}