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
struct command_block {int dummy; } ;

/* Variables and functions */
 int CB_NUMBER_OF_ELEMENTS_SMALL ; 
 int /*<<< orphan*/  IPW_SHARED_SRAM_DMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct ipw_priv *priv)
{
	FUNC0(priv, IPW_SHARED_SRAM_DMA_CONTROL,
			CB_NUMBER_OF_ELEMENTS_SMALL *
			sizeof(struct command_block));
}