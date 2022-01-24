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
 unsigned int IRQ_EINT0 ; 
 int /*<<< orphan*/  S3C2410_INTMSK ; 
 int /*<<< orphan*/  S3C2412_EINTMASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(unsigned int irqno)
{
	unsigned long bitval = 1UL << (irqno - IRQ_EINT0);
	unsigned long mask;

	mask = FUNC0(S3C2412_EINTMASK);
	FUNC1(mask & ~bitval, S3C2412_EINTMASK);

	mask = FUNC0(S3C2410_INTMSK);
	FUNC1(mask & ~bitval, S3C2410_INTMSK);
}