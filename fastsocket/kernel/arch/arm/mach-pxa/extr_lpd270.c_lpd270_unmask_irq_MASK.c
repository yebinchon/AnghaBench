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

/* Variables and functions */
 int /*<<< orphan*/  LPD270_INT_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int lpd270_irq_enabled ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	int lpd270_irq = irq - FUNC0(0);

	lpd270_irq_enabled |= 1 << lpd270_irq;
	FUNC1(lpd270_irq_enabled, LPD270_INT_MASK);
}