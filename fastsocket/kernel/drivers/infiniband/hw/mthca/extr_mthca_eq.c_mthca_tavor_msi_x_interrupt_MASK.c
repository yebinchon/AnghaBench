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
struct mthca_eq {int /*<<< orphan*/  eqn; int /*<<< orphan*/  cons_index; struct mthca_dev* dev; } ;
struct mthca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*,struct mthca_eq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,struct mthca_eq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *eq_ptr)
{
	struct mthca_eq  *eq  = eq_ptr;
	struct mthca_dev *dev = eq->dev;

	FUNC0(dev, eq);
	FUNC2(dev, eq, eq->cons_index);
	FUNC1(dev, eq->eqn);

	/* MSI-X vectors always belong to us */
	return IRQ_HANDLED;
}