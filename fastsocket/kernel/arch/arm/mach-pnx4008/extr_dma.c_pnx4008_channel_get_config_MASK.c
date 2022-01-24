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
struct pnx4008_dma_config {int is_ll; void* dest_addr; void* src_addr; void* ll_dma; void* ch_ctrl; void* ch_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dma_channels ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int ch, struct pnx4008_dma_config * config)
{
	if (!FUNC5(ch) || !dma_channels[ch].name || !config)
		return -EINVAL;

	FUNC7();
	config->ch_cfg = FUNC6(FUNC0(ch));
	config->ch_ctrl = FUNC6(FUNC1(ch));

	config->ll_dma = FUNC6(FUNC3(ch));
	config->is_ll = config->ll_dma ? 1 : 0;

	config->src_addr = FUNC6(FUNC4(ch));
	config->dest_addr = FUNC6(FUNC2(ch));
	FUNC8();

	return 0;
}