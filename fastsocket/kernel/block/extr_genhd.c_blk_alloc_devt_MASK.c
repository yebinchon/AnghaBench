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
struct hd_struct {scalar_t__ partno; } ;
struct gendisk {scalar_t__ minors; scalar_t__ first_minor; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_EXT_MAJOR ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_EXT_DEVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ext_devt_idr ; 
 int /*<<< orphan*/  ext_devt_mutex ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hd_struct*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct gendisk* FUNC7 (struct hd_struct*) ; 

int FUNC8(struct hd_struct *part, dev_t *devt)
{
	struct gendisk *disk = FUNC7(part);
	int idx, rc;

	/* in consecutive minor range? */
	if (part->partno < disk->minors) {
		*devt = FUNC0(disk->major, disk->first_minor + part->partno);
		return 0;
	}

	/* allocate ext devt */
	do {
		if (!FUNC3(&ext_devt_idr, GFP_KERNEL))
			return -ENOMEM;
		FUNC5(&ext_devt_mutex);
		rc = FUNC2(&ext_devt_idr, part, &idx);
		FUNC6(&ext_devt_mutex);
	} while (rc == -EAGAIN);

	if (rc)
		return rc;

	if (idx > MAX_EXT_DEVT) {
		FUNC5(&ext_devt_mutex);
		FUNC4(&ext_devt_idr, idx);
		FUNC6(&ext_devt_mutex);
		return -EBUSY;
	}

	*devt = FUNC0(BLOCK_EXT_MAJOR, FUNC1(idx));
	return 0;
}