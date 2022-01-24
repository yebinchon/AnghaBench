#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sge_rspq {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {TYPE_2__* qs; } ;
struct adapter {TYPE_1__ sge; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {struct sge_rspq rspq; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_CLI ; 
 int /*<<< orphan*/  A_SG_DATA_INTR ; 
 int F_ERRINTR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *cookie)
{
	u32 map;
	struct adapter *adap = cookie;
	struct sge_rspq *q0 = &adap->sge.qs[0].rspq;

	FUNC6(adap, A_PL_CLI, 0);
	map = FUNC4(adap, A_SG_DATA_INTR);

	if (FUNC7(!map))	/* shared interrupt, most likely */
		return IRQ_NONE;

	FUNC2(&q0->lock);

	if (FUNC7(map & F_ERRINTR))
		FUNC5(adap);

	if (FUNC0(map & 1))
		FUNC1(adap, q0);

	if (map & 2)
		FUNC1(adap, &adap->sge.qs[1].rspq);

	FUNC3(&q0->lock);
	return IRQ_HANDLED;
}