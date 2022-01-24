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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FH49_MEM_RCSR_CHNL0_CONFIG_REG ; 
 int /*<<< orphan*/  FH49_MEM_RSSR_RX_STATUS_REG ; 
 int /*<<< orphan*/  FH49_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct il_priv *il)
{
	int ret;

	FUNC2(il, FH49_MEM_RCSR_CHNL0_CONFIG_REG, 0);
	ret = FUNC1(il, FH49_MEM_RSSR_RX_STATUS_REG,
			   FH49_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
			   FH49_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
			   1000);
	if (ret < 0)
		FUNC0("Can't stop Rx DMA.\n");

	return 0;
}