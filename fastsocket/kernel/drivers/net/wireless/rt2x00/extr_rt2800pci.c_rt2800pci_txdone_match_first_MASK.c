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
typedef  int /*<<< orphan*/  u32 ;
struct queue_entry {int /*<<< orphan*/  flags; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA_STATUS_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct queue_entry *entry, void *data)
{
	u32 status = *(u32 *)data;

	/*
	 * Find the first frame without tx status and assign this status to it
	 * regardless if it matches or not.
	 */
	if (!FUNC1(ENTRY_DATA_STATUS_SET, &entry->flags)) {
		/*
		 * Got a matching frame, associate the tx status with
		 * the frame
		 */
		entry->status = status;
		FUNC0(ENTRY_DATA_STATUS_SET, &entry->flags);
		return true;
	}

	/* Check the next frame */
	return false;
}