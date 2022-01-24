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
typedef  int u32 ;
struct m2p_channel {int /*<<< orphan*/  clk; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ M2P_CONTROL ; 
 int M2P_CONTROL_NFB_IRQ_EN ; 
 int M2P_CONTROL_STALL_IRQ_EN ; 
 scalar_t__ STATE_ON ; 
 scalar_t__ STATE_STALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct m2p_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct m2p_channel*,int) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct m2p_channel *ch)
{
	u32 v;

	v = FUNC4(ch->base + M2P_CONTROL);
	v &= ~(M2P_CONTROL_STALL_IRQ_EN | M2P_CONTROL_NFB_IRQ_EN);
	FUNC3(ch, v);

	while (FUNC2(ch) == STATE_ON)
		FUNC1();

	FUNC3(ch, 0x0);

	while (FUNC2(ch) == STATE_STALL)
		FUNC1();

	FUNC0(ch->clk);
}