#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct e820entry {scalar_t__ size; scalar_t__ addr; } ;
struct TYPE_2__ {int nr_map; struct e820entry* map; } ;

/* Variables and functions */
 TYPE_1__ e820 ; 
 int /*<<< orphan*/  FUNC0 (struct resource*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct resource *avail)
{
	int i;
	struct e820entry *entry;

	for (i = 0; i < e820.nr_map; i++) {
		entry = &e820.map[i];

		FUNC0(avail, entry->addr,
			      entry->addr + entry->size - 1);
	}
}