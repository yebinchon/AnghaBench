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
struct ps_internal {int /*<<< orphan*/  list; } ;
struct path_selector_type {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ps_internal* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ps_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ps_internal*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct path_selector_type *pst)
{
	struct ps_internal *psi;

	FUNC1(&_ps_lock);

	psi = FUNC0(pst->name);
	if (!psi) {
		FUNC4(&_ps_lock);
		return -EINVAL;
	}

	FUNC3(&psi->list);

	FUNC4(&_ps_lock);

	FUNC2(psi);

	return 0;
}