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
struct bio {int /*<<< orphan*/  bi_phys_segments; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct bio *bio,
	unsigned int cnt)
{
	atomic_t *segments = (atomic_t *)&bio->bi_phys_segments;
	int old, new;

	do {
		old = FUNC1(segments);
		new = (old & 0xffff) | (cnt << 16);
	} while (FUNC0(segments, old, new) != old);
}