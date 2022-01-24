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
struct iwl_notification_wait {int /*<<< orphan*/  list; } ;
struct iwl_notif_wait_data {int /*<<< orphan*/  notif_wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_notif_wait_data *notif_wait,
			     struct iwl_notification_wait *wait_entry)
{
	FUNC1(&notif_wait->notif_wait_lock);
	FUNC0(&wait_entry->list);
	FUNC2(&notif_wait->notif_wait_lock);
}