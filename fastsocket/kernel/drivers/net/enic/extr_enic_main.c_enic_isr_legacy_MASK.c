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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * napi; int /*<<< orphan*/  reset; int /*<<< orphan*/  legacy_pba; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  FUNC6 (struct enic*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct enic* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *data)
{
	struct net_device *netdev = data;
	struct enic *enic = FUNC8(netdev);
	unsigned int io_intr = FUNC3();
	unsigned int err_intr = FUNC2();
	unsigned int notify_intr = FUNC4();
	u32 pba;

	FUNC11(&enic->intr[io_intr]);

	pba = FUNC10(enic->legacy_pba);
	if (!pba) {
		FUNC13(&enic->intr[io_intr]);
		return IRQ_NONE;	/* not our interrupt */
	}

	if (FUNC0(pba, notify_intr)) {
		FUNC12(&enic->intr[notify_intr]);
		FUNC6(enic);
	}

	if (FUNC0(pba, err_intr)) {
		FUNC12(&enic->intr[err_intr]);
		FUNC5(enic);
		/* schedule recovery from WQ/RQ error */
		FUNC9(&enic->reset);
		return IRQ_HANDLED;
	}

	if (FUNC0(pba, io_intr)) {
		if (FUNC7(&enic->napi[0]))
			FUNC1(&enic->napi[0]);
	} else {
		FUNC13(&enic->intr[io_intr]);
	}

	return IRQ_HANDLED;
}