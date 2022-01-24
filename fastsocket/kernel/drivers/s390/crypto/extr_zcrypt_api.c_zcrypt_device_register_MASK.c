#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zcrypt_device {int online; TYPE_2__* ap_dev; int /*<<< orphan*/  list; TYPE_1__* ops; int /*<<< orphan*/  refcount; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_3__ device; int /*<<< orphan*/  qid; } ;
struct TYPE_5__ {scalar_t__ rng; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBF_INFO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct zcrypt_device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zcrypt_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_device_attr_group ; 
 int /*<<< orphan*/  zcrypt_device_count ; 
 int /*<<< orphan*/  zcrypt_device_list ; 
 int /*<<< orphan*/  zcrypt_device_lock ; 
 int /*<<< orphan*/  FUNC11 (struct zcrypt_device*) ; 
 int FUNC12 () ; 

int FUNC13(struct zcrypt_device *zdev)
{
	int rc;

	if (!zdev->ops)
		return -ENODEV;
	rc = FUNC9(&zdev->ap_dev->device.kobj,
				&zcrypt_device_attr_group);
	if (rc)
		goto out;
	FUNC2(&zdev->ap_dev->device);
	FUNC3(&zdev->refcount);
	FUNC7(&zcrypt_device_lock);
	zdev->online = 1;	/* New devices are online by default. */
	FUNC0(DBF_INFO, zdev, "dev%04xo%dreg", zdev->ap_dev->qid,
		       zdev->online);
	FUNC4(&zdev->list, &zcrypt_device_list);
	FUNC1(zdev);
	zcrypt_device_count++;
	FUNC8(&zcrypt_device_lock);
	if (zdev->ops->rng) {
		rc = FUNC12();
		if (rc)
			goto out_unregister;
	}
	return 0;

out_unregister:
	FUNC7(&zcrypt_device_lock);
	zcrypt_device_count--;
	FUNC5(&zdev->list);
	FUNC8(&zcrypt_device_lock);
	FUNC10(&zdev->ap_dev->device.kobj,
			   &zcrypt_device_attr_group);
	FUNC6(&zdev->ap_dev->device);
	FUNC11(zdev);
out:
	return rc;
}