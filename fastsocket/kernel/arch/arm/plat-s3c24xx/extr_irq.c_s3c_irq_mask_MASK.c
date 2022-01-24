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
 scalar_t__ IRQ_EINT0 ; 
 int /*<<< orphan*/  S3C2410_INTMSK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(unsigned int irqno)
{
	unsigned long mask;

	irqno -= IRQ_EINT0;

	mask = FUNC0(S3C2410_INTMSK);
	mask |= 1UL << irqno;
	FUNC1(mask, S3C2410_INTMSK);
}