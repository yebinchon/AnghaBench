#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_tape {int /*<<< orphan*/  kref; TYPE_2__* modes; struct scsi_device* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct scsi_device {TYPE_1__ sdev_gendev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** cdevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_TAPE_MAJOR ; 
 int ST_NBR_MODES ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_tape_release ; 
 struct scsi_tape** scsi_tapes ; 
 int /*<<< orphan*/  st_dev_arr_lock ; 
 int st_dev_max ; 
 int /*<<< orphan*/  st_nr_dev ; 
 int /*<<< orphan*/  st_ref_mutex ; 
 int /*<<< orphan*/  st_sysfs_class ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct scsi_device* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct scsi_device *SDp = FUNC8(dev);
	struct scsi_tape *tpnt;
	int i, j, mode;

	FUNC9(&st_dev_arr_lock);
	for (i = 0; i < st_dev_max; i++) {
		tpnt = scsi_tapes[i];
		if (tpnt != NULL && tpnt->device == SDp) {
			scsi_tapes[i] = NULL;
			st_nr_dev--;
			FUNC10(&st_dev_arr_lock);
			FUNC7(&tpnt->device->sdev_gendev.kobj,
					  "tape");
			for (mode = 0; mode < ST_NBR_MODES; ++mode) {
				for (j=0; j < 2; j++) {
					FUNC3(st_sysfs_class,
						       FUNC0(SCSI_TAPE_MAJOR,
							     FUNC1(i, mode, j)));
					FUNC2(tpnt->modes[mode].cdevs[j]);
					tpnt->modes[mode].cdevs[j] = NULL;
				}
			}

			FUNC5(&st_ref_mutex);
			FUNC4(&tpnt->kref, scsi_tape_release);
			FUNC6(&st_ref_mutex);
			return 0;
		}
	}

	FUNC10(&st_dev_arr_lock);
	return 0;
}