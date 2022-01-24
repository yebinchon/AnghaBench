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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_DMA_I_CB_BASE ; 
 int /*<<< orphan*/  IPW_SHARED_SRAM_DMA_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ipw_priv *priv)
{				/* start dma engine but no transfers yet */

	FUNC0(">> :\n");

	/* Start the dma */
	FUNC1(priv);

	/* Write CB base address */
	FUNC2(priv, IPW_DMA_I_CB_BASE, IPW_SHARED_SRAM_DMA_CONTROL);

	FUNC0("<< :\n");
	return 0;
}