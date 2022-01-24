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
struct mbcs_soft {TYPE_1__* algo_sn_irq; TYPE_1__* put_sn_irq; TYPE_1__* get_sn_irq; } ;
struct cx_dev {struct mbcs_soft* soft; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbcs_soft*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct cx_dev *dev)
{
	struct mbcs_soft *soft;

	soft = dev->soft;

	FUNC0(soft->get_sn_irq->irq_irq, soft);
	FUNC1(soft->get_sn_irq);
	FUNC0(soft->put_sn_irq->irq_irq, soft);
	FUNC1(soft->put_sn_irq);
	FUNC0(soft->algo_sn_irq->irq_irq, soft);
	FUNC1(soft->algo_sn_irq);
}