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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CT_NONE ; 
 int EINVAL ; 
 int count ; 
 int /*<<< orphan*/  count_lock ; 
 int /*<<< orphan*/ * cp_name ; 
 int cpoint ; 
 int cpoint_count ; 
 int /*<<< orphan*/  cpoint_name ; 
 int /*<<< orphan*/  cpoint_type ; 
 scalar_t__ cptype ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int recur_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	int i;
	unsigned long flags;

	if (cpoint_count < 1 || recur_count < 1)
		return -EINVAL;

	FUNC2(&count_lock, flags);
	count = cpoint_count;
	FUNC3(&count_lock, flags);

	/* No special parameters */
	if (!cpoint_type && !cpoint_name)
		return 0;

	/* Neither or both of these need to be set */
	if (!cpoint_type || !cpoint_name)
		return -EINVAL;

	cptype = FUNC1(cpoint_type, FUNC5(cpoint_type));
	if (cptype == CT_NONE)
		return -EINVAL;

	for (i = 0; i < FUNC0(cp_name); i++) {
		if (!FUNC4(cpoint_name, cp_name[i])) {
			cpoint = i + 1;
			return 0;
		}
	}

	/* Could not find a valid crash point */
	return -EINVAL;
}