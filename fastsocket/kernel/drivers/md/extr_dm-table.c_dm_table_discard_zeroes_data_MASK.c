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
struct dm_target {scalar_t__ discard_zeroes_data_unsupported; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct dm_table*) ; 
 struct dm_target* FUNC1 (struct dm_table*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct dm_table *t)
{
	struct dm_target *ti;
	unsigned i = 0;

	/* Ensure that all targets supports discard_zeroes_data. */
	while (i < FUNC0(t)) {
		ti = FUNC1(t, i++);

		if (ti->discard_zeroes_data_unsupported)
			return 0;
	}

	return 1;
}