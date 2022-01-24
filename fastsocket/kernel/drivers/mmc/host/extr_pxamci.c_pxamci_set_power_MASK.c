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
struct pxamci_host {int /*<<< orphan*/  mmc; TYPE_1__* pdata; scalar_t__ vcc; } ;
struct TYPE_2__ {int ocr_mask; int gpio_power_invert; int /*<<< orphan*/  (* setpower ) (int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  gpio_power; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC5(struct pxamci_host *host, unsigned int vdd)
{
	int on;

#ifdef CONFIG_REGULATOR
	if (host->vcc)
		mmc_regulator_set_ocr(host->vcc, vdd);
#endif
	if (!host->vcc && host->pdata &&
	    FUNC0(host->pdata->gpio_power)) {
		on = ((1 << vdd) & host->pdata->ocr_mask);
		FUNC1(host->pdata->gpio_power,
			       !!on ^ host->pdata->gpio_power_invert);
	}
	if (!host->vcc && host->pdata && host->pdata->setpower)
		host->pdata->setpower(FUNC2(host->mmc), vdd);
}