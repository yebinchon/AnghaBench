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
struct b43legacy_dmaring {int nr_slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(struct b43legacy_dmaring *ring, int slot)
{
	FUNC0(!(slot >= 0 && slot <= ring->nr_slots - 1));
	if (slot == 0)
		return ring->nr_slots - 1;
	return slot - 1;
}