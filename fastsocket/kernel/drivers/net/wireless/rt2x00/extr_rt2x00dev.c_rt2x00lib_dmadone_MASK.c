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
struct queue_entry {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_STATUS_PENDING ; 
 int /*<<< orphan*/  ENTRY_OWNER_DEVICE_DATA ; 
 int /*<<< orphan*/  Q_INDEX_DMA_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct queue_entry *entry)
{
	FUNC2(ENTRY_DATA_STATUS_PENDING, &entry->flags);
	FUNC0(ENTRY_OWNER_DEVICE_DATA, &entry->flags);
	FUNC1(entry, Q_INDEX_DMA_DONE);
}