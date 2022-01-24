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
struct stk_camera {int /*<<< orphan*/  interface; struct file* owner; } ;
struct file {struct stk_camera* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *fp)
{
	struct stk_camera *dev = fp->private_data;

	if (dev->owner == fp) {
		FUNC2(dev);
		FUNC1(dev);
		dev->owner = NULL;
	}

	if(FUNC0(dev))
		FUNC3(dev->interface);

	return 0;
}