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
struct dm_table {int /*<<< orphan*/  md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct dm_table*) ; 
 int FUNC2 (struct dm_table*) ; 
 int FUNC3 (struct dm_table*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dm_table*) ; 

int FUNC5(struct dm_table *t)
{
	int r;

	r = FUNC4(t);
	if (r) {
		FUNC0("unable to set table type");
		return r;
	}

	r = FUNC2(t);
	if (r) {
		FUNC0("unable to build btrees");
		return r;
	}

	r = FUNC3(t, t->md);
	if (r) {
		FUNC0("could not register integrity profile.");
		return r;
	}

	r = FUNC1(t);
	if (r)
		FUNC0("unable to allocate mempools");

	return r;
}