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
struct scsi_device {int dummy; } ;
struct scsi_cd {int /*<<< orphan*/  kref; struct scsi_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  sr_kref_release ; 
 int /*<<< orphan*/  sr_ref_mutex ; 

__attribute__((used)) static void FUNC4(struct scsi_cd *cd)
{
	struct scsi_device *sdev = cd->device;

	FUNC1(&sr_ref_mutex);
	FUNC0(&cd->kref, sr_kref_release);
	FUNC3(sdev);
	FUNC2(&sr_ref_mutex);
}