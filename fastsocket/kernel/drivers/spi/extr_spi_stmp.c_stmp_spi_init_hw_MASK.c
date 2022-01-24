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
struct stmp_spi {TYPE_1__* master_dev; int /*<<< orphan*/  dma; int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {void* platform_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct stmp_spi *ss)
{
	int err = 0;
	void *pins = ss->master_dev->platform_data;

	err = FUNC7(pins, FUNC4(ss->master_dev));
	if (err)
		goto out;

	ss->clk = FUNC3(NULL, "ssp");
	if (FUNC0(ss->clk)) {
		err = FUNC1(ss->clk);
		goto out_free_pins;
	}
	FUNC2(ss->clk);

	FUNC8(ss->regs, false);
	FUNC5(ss->dma);

	return 0;

out_free_pins:
	FUNC6(pins, FUNC4(ss->master_dev));
out:
	return err;
}