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
struct thin_c {int /*<<< orphan*/  td; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  virt_block; struct thin_c* tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_thin_new_mapping*) ; 

__attribute__((used)) static void FUNC3(struct dm_thin_new_mapping *m)
{
	int r;
	struct thin_c *tc = m->tc;

	r = FUNC1(tc->td, m->virt_block);
	if (r)
		FUNC0("dm_thin_remove_block() failed");

	FUNC2(m);
}