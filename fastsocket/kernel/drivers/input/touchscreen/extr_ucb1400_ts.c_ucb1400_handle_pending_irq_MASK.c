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
struct ucb1400_ts {int /*<<< orphan*/  irq; TYPE_1__* ts_idev; int /*<<< orphan*/  ac97; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IE_CLEAR ; 
 int /*<<< orphan*/  UCB_IE_STATUS ; 
 unsigned int UCB_IE_TSPX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ucb1400_ts *ucb)
{
	unsigned int isr;

	isr = FUNC2(ucb->ac97, UCB_IE_STATUS);
	FUNC3(ucb->ac97, UCB_IE_CLEAR, isr);
	FUNC3(ucb->ac97, UCB_IE_CLEAR, 0);

	if (isr & UCB_IE_TSPX)
		FUNC4(ucb->ac97);
	else
		FUNC0(&ucb->ts_idev->dev, "ucb1400: unexpected IE_STATUS = %#x\n", isr);
	FUNC1(ucb->irq);
}