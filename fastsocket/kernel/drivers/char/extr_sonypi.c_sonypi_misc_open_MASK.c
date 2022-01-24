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
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  open_count; int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sonypi_device ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	FUNC1();
	FUNC2(&sonypi_device.lock);
	/* Flush input queue on first open */
	if (!sonypi_device.open_count)
		FUNC0(sonypi_device.fifo);
	sonypi_device.open_count++;
	FUNC3(&sonypi_device.lock);
	FUNC4();
	return 0;
}