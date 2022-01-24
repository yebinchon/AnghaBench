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
struct ocrdma_dev {int /*<<< orphan*/  meq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*) ; 

void FUNC4(struct ocrdma_dev *dev)
{
	FUNC3(dev);

	/* cleanup the data path eqs */
	FUNC2(dev);

	/* cleanup the control path */
	FUNC1(dev);
	FUNC0(dev, &dev->meq);
}