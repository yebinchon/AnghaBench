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
struct pxa_irda {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_pwdown_inverted; int /*<<< orphan*/  gpio_pwdown; int /*<<< orphan*/  (* transceiver_mode ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int IR_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct pxa_irda *si, int mode)
{
	if (si->pdata->transceiver_mode)
		si->pdata->transceiver_mode(si->dev, mode);
	else {
		if (FUNC0(si->pdata->gpio_pwdown))
			FUNC1(si->pdata->gpio_pwdown,
					!(mode & IR_OFF) ^
					!si->pdata->gpio_pwdown_inverted);
		FUNC2(si->dev, mode);
	}
}