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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  wkup_maste; int /*<<< orphan*/  wkup_itype; int /*<<< orphan*/  wkup_inten; int /*<<< orphan*/  wkup_ddr; int /*<<< orphan*/  wkup_gpioe; } ;

/* Variables and functions */
 TYPE_1__* gpiow ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(u8 pin, u8 level)
{
	u16 tmp;

	/* enable gpio */
	FUNC2(&gpiow->wkup_gpioe, FUNC0(&gpiow->wkup_gpioe) | (1 << pin));
	/* set as input */
	FUNC2(&gpiow->wkup_ddr, FUNC0(&gpiow->wkup_ddr) & ~(1 << pin));
	/* enable deep sleep interrupt */
	FUNC2(&gpiow->wkup_inten, FUNC0(&gpiow->wkup_inten) | (1 << pin));
	/* low/high level creates wakeup interrupt */
	tmp = FUNC1(&gpiow->wkup_itype);
	tmp &= ~(0x3 << (pin * 2));
	tmp |= (!level + 1) << (pin * 2);
	FUNC3(&gpiow->wkup_itype, tmp);
	/* master enable */
	FUNC2(&gpiow->wkup_maste, 1);

	return 0;
}