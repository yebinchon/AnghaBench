#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {int /*<<< orphan*/  enclosure_logical_id; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  sas_device_lock; } ;

/* Variables and functions */
 int ENXIO ; 
 struct _sas_device* FUNC0 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 struct MPT2SAS_ADAPTER* FUNC1 (struct sas_rphy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct sas_rphy *rphy, u64 *identifier)
{
	struct MPT2SAS_ADAPTER *ioc = FUNC1(rphy);
	struct _sas_device *sas_device;
	unsigned long flags;
	int rc;

	FUNC2(&ioc->sas_device_lock, flags);
	sas_device = FUNC0(ioc,
	    rphy->identify.sas_address);
	if (sas_device) {
		*identifier = sas_device->enclosure_logical_id;
		rc = 0;
	} else {
		*identifier = 0;
		rc = -ENXIO;
	}
	FUNC3(&ioc->sas_device_lock, flags);
	return rc;
}