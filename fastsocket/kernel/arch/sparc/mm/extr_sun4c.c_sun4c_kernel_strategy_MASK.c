#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sun4c_mmu_entry {int /*<<< orphan*/  vaddr; } ;
struct TYPE_6__ {struct sun4c_mmu_entry* prev; } ;
struct TYPE_9__ {TYPE_1__ ringhd; } ;
struct TYPE_7__ {struct sun4c_mmu_entry* next; } ;
struct TYPE_8__ {TYPE_2__ ringhd; scalar_t__ num_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sun4c_mmu_entry*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__ sun4c_kernel_ring ; 
 int /*<<< orphan*/  FUNC2 (struct sun4c_mmu_entry*) ; 
 TYPE_3__ sun4c_kfree_ring ; 

__attribute__((used)) static struct sun4c_mmu_entry *FUNC3(void)
{
	struct sun4c_mmu_entry *this_entry;

	/* If some are free, return first one. */
	if (sun4c_kfree_ring.num_entries) {
		this_entry = sun4c_kfree_ring.ringhd.next;
		return this_entry;
	}

	/* Else free one up. */
	this_entry = sun4c_kernel_ring.ringhd.prev;
	FUNC1(this_entry->vaddr);
	FUNC2(this_entry);
	FUNC0(this_entry, &sun4c_kernel_ring);
	this_entry = sun4c_kfree_ring.ringhd.next;

	return this_entry;
}