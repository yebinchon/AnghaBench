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
struct ubi_ltree_entry {scalar_t__ users; int /*<<< orphan*/  rb; int /*<<< orphan*/  mutex; } ;
struct ubi_device {int /*<<< orphan*/  ltree_lock; int /*<<< orphan*/  ltree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubi_ltree_entry*) ; 
 int FUNC1 (struct ubi_ltree_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_ltree_entry*) ; 
 struct ubi_ltree_entry* FUNC4 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ubi_device *ubi, int vol_id, int lnum)
{
	struct ubi_ltree_entry *le;

	le = FUNC4(ubi, vol_id, lnum);
	if (FUNC0(le))
		return FUNC1(le);
	if (FUNC2(&le->mutex))
		return 0;

	/* Contention, cancel */
	FUNC6(&ubi->ltree_lock);
	le->users -= 1;
	FUNC8(le->users >= 0);
	if (le->users == 0) {
		FUNC5(&le->rb, &ubi->ltree);
		FUNC3(le);
	}
	FUNC7(&ubi->ltree_lock);

	return 1;
}