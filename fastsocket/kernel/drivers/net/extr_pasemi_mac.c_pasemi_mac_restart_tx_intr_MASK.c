#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pasemi_mac {int dummy; } ;
struct TYPE_3__ {unsigned int* status; int /*<<< orphan*/  chno; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int PAS_IOB_DMA_TXCH_RESET_PINTC ; 
 unsigned int PAS_STATUS_PCNT_M ; 
 TYPE_2__* FUNC2 (struct pasemi_mac const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(const struct pasemi_mac *mac)
{
	unsigned int reg, pcnt;

	/* Re-enable packet count interrupts */
	pcnt = *FUNC2(mac)->chan.status & PAS_STATUS_PCNT_M;

	reg = FUNC1(pcnt) | PAS_IOB_DMA_TXCH_RESET_PINTC;

	FUNC3(FUNC0(FUNC2(mac)->chan.chno), reg);
}