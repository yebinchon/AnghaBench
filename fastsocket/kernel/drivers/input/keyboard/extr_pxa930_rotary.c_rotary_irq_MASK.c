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
struct pxa930_rotary_platform_data {int up_key; int down_key; int /*<<< orphan*/  rel_code; } ;
struct pxa930_rotary {int last_ercr; int /*<<< orphan*/  input_dev; scalar_t__ mmio_base; struct pxa930_rotary_platform_data* pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ ERCR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa930_rotary*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct pxa930_rotary *r = dev_id;
	struct pxa930_rotary_platform_data *pdata = r->pdata;
	int ercr, delta, key;

	ercr = FUNC0(r->mmio_base + ERCR) & 0xf;
	FUNC1(r);

	delta = ercr - r->last_ercr;
	if (delta == 0)
		return IRQ_HANDLED;

	r->last_ercr = ercr;

	if (pdata->up_key && pdata->down_key) {
		key = (delta > 0) ? pdata->up_key : pdata->down_key;
		FUNC2(r->input_dev, key, 1);
		FUNC4(r->input_dev);
		FUNC2(r->input_dev, key, 0);
	} else
		FUNC3(r->input_dev, pdata->rel_code, delta);

	FUNC4(r->input_dev);

	return IRQ_HANDLED;
}