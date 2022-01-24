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
struct TYPE_2__ {scalar_t__ pressure; } ;
struct corgi_ts {int pendown; int /*<<< orphan*/  irq_gpio; TYPE_1__ tc; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct corgi_ts*) ; 
 scalar_t__ FUNC5 (struct corgi_ts*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct corgi_ts *corgi_ts, int isTimer)
{
	if ((FUNC1(FUNC2(corgi_ts->irq_gpio)) & FUNC0(FUNC2(corgi_ts->irq_gpio))) == 0) {
		/* Disable Interrupt */
		FUNC6(corgi_ts->irq_gpio, IRQ_TYPE_NONE);
		if (FUNC5(corgi_ts)) {
			corgi_ts->pendown = 1;
			FUNC4(corgi_ts);
		}
		FUNC3(&corgi_ts->timer, jiffies + HZ / 100);
	} else {
		if (corgi_ts->pendown == 1 || corgi_ts->pendown == 2) {
			FUNC3(&corgi_ts->timer, jiffies + HZ / 100);
			corgi_ts->pendown++;
			return;
		}

		if (corgi_ts->pendown) {
			corgi_ts->tc.pressure = 0;
			FUNC4(corgi_ts);
		}

		/* Enable Falling Edge */
		FUNC6(corgi_ts->irq_gpio, IRQ_TYPE_EDGE_FALLING);
		corgi_ts->pendown = 0;
	}
}