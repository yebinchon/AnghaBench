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
struct ll_disk {int /*<<< orphan*/  tm; int /*<<< orphan*/  bitmap_root; int /*<<< orphan*/  mi_le; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int /*<<< orphan*/  index_validator ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct ll_disk *ll)
{
	int r;
	struct dm_block *b;

	r = FUNC2(ll->tm, &index_validator, &b);
	if (r < 0)
		return r;

	FUNC4(FUNC0(b), &ll->mi_le, sizeof(ll->mi_le));
	ll->bitmap_root = FUNC1(b);

	return FUNC3(ll->tm, b);
}