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
struct brd_device {int /*<<< orphan*/  brd_disk; } ;
typedef  int dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct kobject* FUNC0 (int /*<<< orphan*/ ) ; 
 int MINORMASK ; 
 int /*<<< orphan*/  brd_devices_mutex ; 
 struct brd_device* FUNC1 (int) ; 
 struct kobject* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct kobject *FUNC5(dev_t dev, int *part, void *data)
{
	struct brd_device *brd;
	struct kobject *kobj;

	FUNC3(&brd_devices_mutex);
	brd = FUNC1(dev & MINORMASK);
	kobj = brd ? FUNC2(brd->brd_disk) : FUNC0(-ENOMEM);
	FUNC4(&brd_devices_mutex);

	*part = 0;
	return kobj;
}