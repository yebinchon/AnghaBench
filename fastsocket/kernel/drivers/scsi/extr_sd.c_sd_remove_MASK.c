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
struct scsi_disk {int /*<<< orphan*/  dev; int /*<<< orphan*/  disk; TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct scsi_disk* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_prep_fn ; 
 int /*<<< orphan*/  scsi_sd_probe_domain ; 
 int /*<<< orphan*/  sd_ref_mutex ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct scsi_disk *sdkp;

	FUNC0(&scsi_sd_probe_domain);
	sdkp = FUNC4(dev);
	FUNC1(sdkp->device->request_queue, scsi_prep_fn);
	FUNC2(sdkp->device->request_queue, NULL);
	FUNC6(&sdkp->dev);
	FUNC3(sdkp->disk);
	FUNC10(dev);

	FUNC7(&sd_ref_mutex);
	FUNC5(dev, NULL);
	FUNC9(&sdkp->dev);
	FUNC8(&sd_ref_mutex);

	return 0;
}