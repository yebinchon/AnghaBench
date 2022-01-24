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
struct tgt_ring {int /*<<< orphan*/ * tr_pages; int /*<<< orphan*/  tr_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TGT_RING_PAGES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tgt_ring *ring)
{
	int i;

	FUNC2(&ring->tr_lock);

	for (i = 0; i < TGT_RING_PAGES; i++) {
		ring->tr_pages[i] = FUNC1(GFP_KERNEL);
		if (!ring->tr_pages[i]) {
			FUNC0("out of memory\n");
			return -ENOMEM;
		}
	}

	return 0;
}