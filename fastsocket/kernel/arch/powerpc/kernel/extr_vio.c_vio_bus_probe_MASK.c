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
struct vio_driver {int (* probe ) (struct vio_dev*,struct vio_device_id const*) ;int /*<<< orphan*/  id_table; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  cmo; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FW_FEATURE_CMO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vio_dev*,struct vio_device_id const*) ; 
 struct vio_dev* FUNC3 (struct device*) ; 
 struct vio_driver* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct vio_dev*) ; 
 struct vio_device_id* FUNC7 (int /*<<< orphan*/ ,struct vio_dev*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct vio_dev *viodev = FUNC3(dev);
	struct vio_driver *viodrv = FUNC4(dev->driver);
	const struct vio_device_id *id;
	int error = -ENODEV;

	if (!viodrv->probe)
		return error;

	id = FUNC7(viodrv->id_table, viodev);
	if (id) {
		FUNC1(&viodev->cmo, 0, sizeof(viodev->cmo));
		if (FUNC0(FW_FEATURE_CMO)) {
			error = FUNC5(viodev);
			if (error)
				return error;
		}
		error = viodrv->probe(viodev, id);
		if (error && FUNC0(FW_FEATURE_CMO))
			FUNC6(viodev);
	}

	return error;
}