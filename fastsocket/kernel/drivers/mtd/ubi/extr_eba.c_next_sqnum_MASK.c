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
struct ubi_device {int /*<<< orphan*/  ltree_lock; int /*<<< orphan*/  global_sqnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long long FUNC2(struct ubi_device *ubi)
{
	unsigned long long sqnum;

	FUNC0(&ubi->ltree_lock);
	sqnum = ubi->global_sqnum++;
	FUNC1(&ubi->ltree_lock);

	return sqnum;
}