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
struct scsi_tape {int /*<<< orphan*/  kref; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_tape_release ; 
 struct scsi_tape** scsi_tapes ; 
 int /*<<< orphan*/  st_dev_arr_lock ; 
 int st_dev_max ; 
 int /*<<< orphan*/  st_ref_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct scsi_tape *FUNC7(int dev)
{
	struct scsi_tape *STp = NULL;

	FUNC2(&st_ref_mutex);
	FUNC5(&st_dev_arr_lock);

	if (dev < st_dev_max && scsi_tapes != NULL)
		STp = scsi_tapes[dev];
	if (!STp) goto out;

	FUNC0(&STp->kref);

	if (!STp->device)
		goto out_put;

	if (FUNC4(STp->device))
		goto out_put;

	goto out;

out_put:
	FUNC1(&STp->kref, scsi_tape_release);
	STp = NULL;
out:
	FUNC6(&st_dev_arr_lock);
	FUNC3(&st_ref_mutex);
	return STp;
}