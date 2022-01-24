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
struct dm_exception_store_type {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 struct dm_exception_store_type* FUNC0 (char const*) ; 
 int /*<<< orphan*/  _lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dm_exception_store_type *FUNC4(const char *name)
{
	struct dm_exception_store_type *type;

	FUNC1(&_lock);

	type = FUNC0(name);

	if (type && !FUNC3(type->module))
		type = NULL;

	FUNC2(&_lock);

	return type;
}