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
struct ub_lun {scalar_t__ readonly; scalar_t__ changed; scalar_t__ removable; struct ub_dev* udev; } ;
struct ub_dev {int /*<<< orphan*/  openc; int /*<<< orphan*/  poison; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int fmode_t ;
struct TYPE_2__ {struct ub_lun* private_data; } ;

/* Variables and functions */
 int ENOMEDIUM ; 
 int ENXIO ; 
 int EROFS ; 
 int FMODE_NDELAY ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ub_lock ; 
 int /*<<< orphan*/  FUNC4 (struct ub_dev*) ; 

__attribute__((used)) static int FUNC5(struct block_device *bdev, fmode_t mode)
{
	struct ub_lun *lun = bdev->bd_disk->private_data;
	struct ub_dev *sc = lun->udev;
	unsigned long flags;
	int rc;

	FUNC2(&ub_lock, flags);
	if (FUNC0(&sc->poison)) {
		FUNC3(&ub_lock, flags);
		return -ENXIO;
	}
	sc->openc++;
	FUNC3(&ub_lock, flags);

	if (lun->removable || lun->readonly)
		FUNC1(bdev);

	/*
	 * The sd.c considers ->media_present and ->changed not equivalent,
	 * under some pretty murky conditions (a failure of READ CAPACITY).
	 * We may need it one day.
	 */
	if (lun->removable && lun->changed && !(mode & FMODE_NDELAY)) {
		rc = -ENOMEDIUM;
		goto err_open;
	}

	if (lun->readonly && (mode & FMODE_WRITE)) {
		rc = -EROFS;
		goto err_open;
	}

	return 0;

err_open:
	FUNC4(sc);
	return rc;
}