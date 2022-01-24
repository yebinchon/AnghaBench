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
typedef  int /*<<< orphan*/  u16 ;
struct _sas_device {int /*<<< orphan*/  list; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; scalar_t__ shost_recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct _sas_device*) ; 
 struct _sas_device* FUNC1 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc, u16 handle)
{
	struct _sas_device *sas_device;
	unsigned long flags;

	if (ioc->shost_recovery)
		return;

	FUNC3(&ioc->sas_device_lock, flags);
	sas_device = FUNC1(ioc, handle);
	if (sas_device)
		FUNC2(&sas_device->list);
	FUNC4(&ioc->sas_device_lock, flags);
	if (sas_device)
		FUNC0(ioc, sas_device);
}