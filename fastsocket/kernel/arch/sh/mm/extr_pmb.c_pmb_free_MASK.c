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
struct pmb_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pmb_entry*) ; 
 int /*<<< orphan*/  pmb_cache ; 
 int /*<<< orphan*/  FUNC1 (struct pmb_entry*) ; 
 int /*<<< orphan*/  pmb_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pmb_entry *pmbe)
{
	FUNC2(&pmb_list_lock);
	FUNC1(pmbe);
	FUNC3(&pmb_list_lock);

	FUNC0(pmb_cache, pmbe);
}