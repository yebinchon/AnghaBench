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
struct kobject {int dummy; } ;
struct hd_struct {int partno; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ BLOCK_EXT_MAJOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bdev_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext_devt_idr ; 
 int /*<<< orphan*/  ext_devt_mutex ; 
 scalar_t__ FUNC4 (struct gendisk*) ; 
 struct hd_struct* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct gendisk* FUNC10 (struct hd_struct*) ; 

struct gendisk *FUNC11(dev_t devt, int *partno)
{
	struct gendisk *disk = NULL;

	if (FUNC0(devt) != BLOCK_EXT_MAJOR) {
		struct kobject *kobj;

		kobj = FUNC6(bdev_map, devt, partno);
		if (kobj)
			disk = FUNC3(FUNC7(kobj));
	} else {
		struct hd_struct *part;

		FUNC8(&ext_devt_mutex);
		part = FUNC5(&ext_devt_idr, FUNC2(FUNC1(devt)));
		if (part && FUNC4(FUNC10(part))) {
			*partno = part->partno;
			disk = FUNC10(part);
		}
		FUNC9(&ext_devt_mutex);
	}

	return disk;
}