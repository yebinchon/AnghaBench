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
struct fw_device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_device*) ; 
 int /*<<< orphan*/  fw_device_idr ; 
 int /*<<< orphan*/  fw_device_rwsem ; 
 struct fw_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct fw_device *FUNC5(dev_t devt)
{
	struct fw_device *device;

	FUNC1(&fw_device_rwsem);
	device = FUNC3(&fw_device_idr, FUNC0(devt));
	if (device)
		FUNC2(device);
	FUNC4(&fw_device_rwsem);

	return device;
}