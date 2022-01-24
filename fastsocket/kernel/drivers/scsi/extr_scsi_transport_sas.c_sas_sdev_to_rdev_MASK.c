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
struct scsi_device {int /*<<< orphan*/  sdev_target; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct sas_end_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SAS_END_DEVICE ; 
 struct sas_end_device* FUNC1 (struct sas_rphy*) ; 
 struct sas_rphy* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sas_end_device *FUNC3(struct scsi_device *sdev)
{
	struct sas_rphy *rphy = FUNC2(sdev->sdev_target);
	struct sas_end_device *rdev;

	FUNC0(rphy->identify.device_type != SAS_END_DEVICE);

	rdev = FUNC1(rphy);
	return rdev;
}