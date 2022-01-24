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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fan_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(u8 *status)
{
	int rc;
	u8 s;

	if (FUNC2(&fan_mutex))
		return -ERESTARTSYS;
	rc = FUNC0(&s);
	if (!rc)
		FUNC1(s);
	FUNC3(&fan_mutex);

	if (status)
		*status = s;

	return rc;
}