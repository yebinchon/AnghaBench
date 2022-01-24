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
struct TYPE_2__ {size_t length; int /*<<< orphan*/  message; } ;
struct zcrypt_device {int /*<<< orphan*/  dbf_area; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; TYPE_1__ reply; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct zcrypt_device*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 struct zcrypt_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_dbf_devices ; 

struct zcrypt_device *FUNC5(size_t max_response_size)
{
	struct zcrypt_device *zdev;

	zdev = FUNC3(sizeof(struct zcrypt_device), GFP_KERNEL);
	if (!zdev)
		return NULL;
	zdev->reply.message = FUNC2(max_response_size, GFP_KERNEL);
	if (!zdev->reply.message)
		goto out_free;
	zdev->reply.length = max_response_size;
	FUNC4(&zdev->lock);
	FUNC0(&zdev->list);
	zdev->dbf_area = zcrypt_dbf_devices;
	return zdev;

out_free:
	FUNC1(zdev);
	return NULL;
}