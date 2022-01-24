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
struct dm_dirty_log_type {int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _lock ; 
 int /*<<< orphan*/  _log_types ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dm_dirty_log_type *type)
{
	int r = 0;

	FUNC2(&_lock);
	if (!FUNC0(type->name))
		FUNC1(&type->list, &_log_types);
	else
		r = -EEXIST;
	FUNC3(&_lock);

	return r;
}