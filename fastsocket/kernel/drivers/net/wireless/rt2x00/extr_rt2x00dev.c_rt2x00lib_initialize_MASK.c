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
struct rt2x00_dev {int /*<<< orphan*/  flags; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* initialize ) (struct rt2x00_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_INITIALIZED ; 
 int FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	int status;

	if (FUNC4(DEVICE_STATE_INITIALIZED, &rt2x00dev->flags))
		return 0;

	/*
	 * Allocate all queue entries.
	 */
	status = FUNC0(rt2x00dev);
	if (status)
		return status;

	/*
	 * Initialize the device.
	 */
	status = rt2x00dev->ops->lib->initialize(rt2x00dev);
	if (status) {
		FUNC1(rt2x00dev);
		return status;
	}

	FUNC2(DEVICE_STATE_INITIALIZED, &rt2x00dev->flags);

	return 0;
}