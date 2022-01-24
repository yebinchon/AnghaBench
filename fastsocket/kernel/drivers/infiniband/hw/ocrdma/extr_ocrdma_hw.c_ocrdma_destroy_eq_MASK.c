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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct ocrdma_eq {TYPE_1__ q; } ;
struct ocrdma_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,struct ocrdma_eq*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct ocrdma_eq*) ; 
 int FUNC2 (struct ocrdma_dev*,struct ocrdma_eq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
	int irq;

	/* disarm EQ so that interrupts are not generated
	 * during freeing and EQ delete is in progress.
	 */
	FUNC3(dev, eq->q.id, false, false, 0);

	irq = FUNC2(dev, eq);
	FUNC1(irq, eq);
	FUNC0(dev, eq);
}