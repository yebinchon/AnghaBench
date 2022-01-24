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
struct uv_IO_APIC_route_entry {int mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(int mmr_pnode, unsigned long mmr_offset)
{
	unsigned long mmr_value;
	struct uv_IO_APIC_route_entry *entry;

	FUNC0(sizeof(struct uv_IO_APIC_route_entry) !=
			sizeof(unsigned long));

	mmr_value = 0;
	entry = (struct uv_IO_APIC_route_entry *)&mmr_value;
	entry->mask = 1;

	FUNC1(mmr_pnode, mmr_offset, mmr_value);
}