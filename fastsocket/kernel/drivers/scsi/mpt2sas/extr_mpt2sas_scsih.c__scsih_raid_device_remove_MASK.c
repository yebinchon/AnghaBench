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
struct _raid_device {int /*<<< orphan*/  list; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  raid_device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _raid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct MPT2SAS_ADAPTER *ioc,
    struct _raid_device *raid_device)
{
	unsigned long flags;

	FUNC2(&ioc->raid_device_lock, flags);
	FUNC1(&raid_device->list);
	FUNC0(raid_device);
	FUNC3(&ioc->raid_device_lock, flags);
}