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
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int PC8736X_GPIO_CT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  pc8736x_gpio_ops ; 
 TYPE_1__* pdev ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	unsigned m = FUNC2(inode);
	file->private_data = &pc8736x_gpio_ops;

	FUNC0();
	FUNC1(&pdev->dev, "open %d\n", m);

	if (m >= PC8736X_GPIO_CT)
		return -EINVAL;
	return FUNC3(inode, file);
}