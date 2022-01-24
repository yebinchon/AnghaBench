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
struct scsi_disk {int /*<<< orphan*/  disk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct scsi_disk* FUNC0 (int /*<<< orphan*/ ) ; 
 struct scsi_disk* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sd_ref_mutex ; 

__attribute__((used)) static struct scsi_disk *FUNC4(struct device *dev)
{
	struct scsi_disk *sdkp;

	FUNC2(&sd_ref_mutex);
	sdkp = FUNC1(dev);
	if (sdkp)
		sdkp = FUNC0(sdkp->disk);
	FUNC3(&sd_ref_mutex);
	return sdkp;
}