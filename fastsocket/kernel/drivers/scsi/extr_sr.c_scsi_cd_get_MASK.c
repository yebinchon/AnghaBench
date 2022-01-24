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
struct scsi_cd {int /*<<< orphan*/  kref; int /*<<< orphan*/  device; } ;
struct gendisk {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct scsi_cd* FUNC4 (struct gendisk*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sr_kref_release ; 
 int /*<<< orphan*/  sr_ref_mutex ; 

__attribute__((used)) static inline struct scsi_cd *FUNC6(struct gendisk *disk)
{
	struct scsi_cd *cd = NULL;

	FUNC2(&sr_ref_mutex);
	if (disk->private_data == NULL)
		goto out;
	cd = FUNC4(disk);
	FUNC0(&cd->kref);
	if (FUNC5(cd->device))
		goto out_put;
	goto out;

 out_put:
	FUNC1(&cd->kref, sr_kref_release);
	cd = NULL;
 out:
	FUNC3(&sr_ref_mutex);
	return cd;
}