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
struct queue_entry {int /*<<< orphan*/  status; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_STATUS_SET ; 
 int /*<<< orphan*/  FUNC0 (struct queue_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct queue_entry *entry,
					     void *data)
{
	if (FUNC2(ENTRY_DATA_STATUS_SET, &entry->flags)) {
		FUNC0(entry, entry->status,
				    FUNC1(entry));
		return false;
	}

	/* No more frames to release */
	return true;
}