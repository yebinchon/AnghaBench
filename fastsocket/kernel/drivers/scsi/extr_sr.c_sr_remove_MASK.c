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
struct scsi_cd {int /*<<< orphan*/  kref; int /*<<< orphan*/  disk; TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct scsi_cd* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_prep_fn ; 
 int /*<<< orphan*/  sr_kref_release ; 
 int /*<<< orphan*/  sr_ref_mutex ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct scsi_cd *cd = FUNC2(dev);

	FUNC0(cd->device->request_queue, scsi_prep_fn);
	FUNC1(cd->disk);

	FUNC4(&sr_ref_mutex);
	FUNC3(&cd->kref, sr_kref_release);
	FUNC5(&sr_ref_mutex);

	return 0;
}