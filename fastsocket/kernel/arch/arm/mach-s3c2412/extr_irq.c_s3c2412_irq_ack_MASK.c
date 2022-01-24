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
 int /*<<< orphan*/  S3C2410_INTPND ; 
 int /*<<< orphan*/  S3C2410_SRCPND ; 
 int /*<<< orphan*/  S3C2412_EINTPEND ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(unsigned int irqno)
{
	unsigned long bitval = 1UL << (irqno - IRQ_EINT0);

	FUNC0(bitval, S3C2412_EINTPEND);
	FUNC0(bitval, S3C2410_SRCPND);
	FUNC0(bitval, S3C2410_INTPND);
}