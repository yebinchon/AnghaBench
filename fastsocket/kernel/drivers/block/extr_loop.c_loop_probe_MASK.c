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
struct loop_device {int /*<<< orphan*/  lo_disk; } ;
struct kobject {int dummy; } ;
typedef  int dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct kobject* FUNC0 (int /*<<< orphan*/ ) ; 
 int MINORMASK ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop_devices_mutex ; 
 struct loop_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct kobject *FUNC5(dev_t dev, int *part, void *data)
{
	struct loop_device *lo;
	struct kobject *kobj;

	FUNC3(&loop_devices_mutex);
	lo = FUNC2(dev & MINORMASK);
	kobj = lo ? FUNC1(lo->lo_disk) : FUNC0(-ENOMEM);
	FUNC4(&loop_devices_mutex);

	*part = 0;
	return kobj;
}