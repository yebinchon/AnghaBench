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
struct dm_buffer {unsigned long last_accessed; scalar_t__ hold_count; int /*<<< orphan*/  state; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_DIRTY ; 
 int /*<<< orphan*/  B_READING ; 
 int /*<<< orphan*/  B_WRITING ; 
 int __GFP_IO ; 
 int /*<<< orphan*/  FUNC0 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dm_buffer *b, gfp_t gfp,
				unsigned long max_jiffies)
{
	if (jiffies - b->last_accessed < max_jiffies)
		return 1;

	if (!(gfp & __GFP_IO)) {
		if (FUNC3(B_READING, &b->state) ||
		    FUNC3(B_WRITING, &b->state) ||
		    FUNC3(B_DIRTY, &b->state))
			return 1;
	}

	if (b->hold_count)
		return 1;

	FUNC1(b);
	FUNC2(b);
	FUNC0(b);

	return 0;
}