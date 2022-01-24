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
struct vring_desc {int flags; unsigned int next; } ;

/* Variables and functions */
 int VRING_DESC_F_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static unsigned FUNC2(struct vring_desc *desc,
			  unsigned int i, unsigned int max)
{
	unsigned int next;

	/* If this descriptor says it doesn't chain, we're done. */
	if (!(desc[i].flags & VRING_DESC_F_NEXT))
		return max;

	/* Check they're not leading us off end of descriptors. */
	next = desc[i].next;
	/* Make sure compiler knows to grab that: we don't want it changing! */
	FUNC1();

	if (next >= max)
		FUNC0(1, "Desc next is %u", next);

	return next;
}