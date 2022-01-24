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
typedef  int /*<<< orphan*/  uint ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_device*) ; 
 int FUNC1 (struct scsi_device*) ; 
 struct scsi_device* FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 

int FUNC4(struct Scsi_Host *host, uint channel,
		    uint target, uint lun)
{
	struct scsi_device *sdev = 
		FUNC2(host, channel, target, lun, NULL);
	if (FUNC0(sdev))
		return FUNC1(sdev);

	FUNC3(sdev);
	return 0;
}