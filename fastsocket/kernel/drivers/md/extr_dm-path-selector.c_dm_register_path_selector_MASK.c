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
 int EEXIST ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ps_internal* FUNC1 (struct path_selector_type*) ; 
 int /*<<< orphan*/  _path_selectors ; 
 int /*<<< orphan*/  _ps_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ps_internal*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct path_selector_type *pst)
{
	int r = 0;
	struct ps_internal *psi = FUNC1(pst);

	if (!psi)
		return -ENOMEM;

	FUNC2(&_ps_lock);

	if (FUNC0(pst->name)) {
		FUNC3(psi);
		r = -EEXIST;
	} else
		FUNC4(&psi->list, &_path_selectors);

	FUNC5(&_ps_lock);

	return r;
}