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
struct scsi_tape {int /*<<< orphan*/  kref; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  scsi_tape_release ; 
 int /*<<< orphan*/  st_ref_mutex ; 

__attribute__((used)) static void FUNC4(struct scsi_tape *STp)
{
	struct scsi_device *sdev = STp->device;

	FUNC1(&st_ref_mutex);
	FUNC0(&STp->kref, scsi_tape_release);
	FUNC3(sdev);
	FUNC2(&st_ref_mutex);
}