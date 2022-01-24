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
struct iwl_notif_wait_data {int /*<<< orphan*/  notif_waitq; int /*<<< orphan*/  notif_waits; int /*<<< orphan*/  notif_wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_notif_wait_data *notif_wait)
{
	FUNC2(&notif_wait->notif_wait_lock);
	FUNC0(&notif_wait->notif_waits);
	FUNC1(&notif_wait->notif_waitq);
}