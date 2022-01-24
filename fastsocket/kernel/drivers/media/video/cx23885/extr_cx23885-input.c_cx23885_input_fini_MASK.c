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
struct cx23885_dev {TYPE_1__* kernel_ir; } ;
struct TYPE_2__ {struct TYPE_2__* name; struct TYPE_2__* phys; int /*<<< orphan*/  rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct cx23885_dev *dev)
{
	/* Always stop the IR hardware from generating interrupts */
	FUNC0(dev);

	if (dev->kernel_ir == NULL)
		return;
	FUNC2(dev->kernel_ir->rc);
	FUNC1(dev->kernel_ir->phys);
	FUNC1(dev->kernel_ir->name);
	FUNC1(dev->kernel_ir);
	dev->kernel_ir = NULL;
}