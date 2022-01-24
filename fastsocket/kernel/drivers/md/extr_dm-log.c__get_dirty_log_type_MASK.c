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
struct dm_dirty_log_type {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 struct dm_dirty_log_type* FUNC0 (char const*) ; 
 int /*<<< orphan*/  _lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dm_dirty_log_type *FUNC4(const char *name)
{
	struct dm_dirty_log_type *log_type;

	FUNC1(&_lock);

	log_type = FUNC0(name);
	if (log_type && !FUNC3(log_type->module))
		log_type = NULL;

	FUNC2(&_lock);

	return log_type;
}