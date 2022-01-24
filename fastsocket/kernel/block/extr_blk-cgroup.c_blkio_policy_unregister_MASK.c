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
struct blkio_policy_type {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  blkio_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct blkio_policy_type *blkiop)
{
	FUNC1(&blkio_list_lock);
	FUNC0(&blkiop->list);
	FUNC2(&blkio_list_lock);
}