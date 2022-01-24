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
struct b43legacy_dmaring {int stopped; int current_slot; int /*<<< orphan*/  used_slots; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct b43legacy_dmaring*) ; 
 int FUNC2 (struct b43legacy_dmaring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_dmaring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
int FUNC4(struct b43legacy_dmaring *ring)
{
	int slot;

	FUNC0(!ring->tx);
	FUNC0(ring->stopped);
	FUNC0(FUNC1(ring) == 0);

	slot = FUNC2(ring, ring->current_slot);
	ring->current_slot = slot;
	ring->used_slots++;

	FUNC3(ring, ring->used_slots);

	return slot;
}