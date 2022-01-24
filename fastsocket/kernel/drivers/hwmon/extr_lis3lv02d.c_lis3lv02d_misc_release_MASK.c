#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  misc_opened; int /*<<< orphan*/  irq; int /*<<< orphan*/  async_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ lis3_dev ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	FUNC1(-1, file, 0, &lis3_dev.async_queue);
	FUNC2(lis3_dev.irq, &lis3_dev);
	FUNC0(0, &lis3_dev.misc_opened); /* release the device */
	return 0;
}