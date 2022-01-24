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
typedef  int u32 ;
struct mlx4_bitmap {int max; int last; int top; int reserved_top; int mask; int avail; int /*<<< orphan*/  lock; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct mlx4_bitmap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u32 FUNC6(struct mlx4_bitmap *bitmap, int cnt, int align)
{
	u32 obj;

	if (FUNC2(cnt == 1 && align == 1))
		return FUNC3(bitmap);

	FUNC4(&bitmap->lock);

	obj = FUNC0(bitmap->table, bitmap->max,
				bitmap->last, cnt, align - 1);
	if (obj >= bitmap->max) {
		bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
				& bitmap->mask;
		obj = FUNC0(bitmap->table, bitmap->max,
						0, cnt, align - 1);
	}

	if (obj < bitmap->max) {
		FUNC1(bitmap->table, obj, cnt);
		if (obj == bitmap->last) {
			bitmap->last = (obj + cnt);
			if (bitmap->last >= bitmap->max)
				bitmap->last = 0;
		}
		obj |= bitmap->top;
	} else
		obj = -1;

	if (obj != -1)
		bitmap->avail -= cnt;

	FUNC5(&bitmap->lock);

	return obj;
}