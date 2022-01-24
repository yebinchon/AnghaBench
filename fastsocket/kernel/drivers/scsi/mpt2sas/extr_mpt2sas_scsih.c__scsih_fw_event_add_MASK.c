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
struct fw_event_work {int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  list; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  fw_event_lock; int /*<<< orphan*/ * firmware_event_thread; int /*<<< orphan*/  fw_event_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _firmware_event_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct MPT2SAS_ADAPTER *ioc, struct fw_event_work *fw_event)
{
	unsigned long flags;

	if (ioc->firmware_event_thread == NULL)
		return;

	FUNC3(&ioc->fw_event_lock, flags);
	FUNC1(&fw_event->list, &ioc->fw_event_list);
	FUNC0(&fw_event->delayed_work, _firmware_event_work);
	FUNC2(ioc->firmware_event_thread,
	    &fw_event->delayed_work, 0);
	FUNC4(&ioc->fw_event_lock, flags);
}