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
struct pnx4008_dma_config {int /*<<< orphan*/  ch_cfg; int /*<<< orphan*/  ch_ctrl; int /*<<< orphan*/  ll_dma; scalar_t__ is_ll; int /*<<< orphan*/  dest_addr; int /*<<< orphan*/  src_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* dma_channels ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int ch, struct pnx4008_dma_config * config)
{
	if (!FUNC5(ch) || !dma_channels[ch].name)
		return -EINVAL;

	FUNC7();
	FUNC6(config->src_addr, FUNC4(ch));
	FUNC6(config->dest_addr, FUNC2(ch));

	if (config->is_ll)
		FUNC6(config->ll_dma, FUNC3(ch));
	else
		FUNC6(0, FUNC3(ch));

	FUNC6(config->ch_ctrl, FUNC1(ch));
	FUNC6(config->ch_cfg, FUNC0(ch));
	FUNC8();

	return 0;

}