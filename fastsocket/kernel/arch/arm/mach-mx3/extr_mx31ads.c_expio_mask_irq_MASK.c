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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PBC_INTMASK_CLEAR_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u32 irq)
{
	u32 expio = FUNC0(irq);
	/* mask the interrupt */
	FUNC2(1 << expio, PBC_INTMASK_CLEAR_REG);
	FUNC1(PBC_INTMASK_CLEAR_REG);
}