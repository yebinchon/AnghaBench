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
struct qpn_map {void* page; } ;
struct ipath_qp_table {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ipath_qp_table *qpt, struct qpn_map *map)
{
	unsigned long page = FUNC1(GFP_KERNEL);
	unsigned long flags;

	/*
	 * Free the page if someone raced with us installing it.
	 */

	FUNC2(&qpt->lock, flags);
	if (map->page)
		FUNC0(page);
	else
		map->page = (void *)page;
	FUNC3(&qpt->lock, flags);
}