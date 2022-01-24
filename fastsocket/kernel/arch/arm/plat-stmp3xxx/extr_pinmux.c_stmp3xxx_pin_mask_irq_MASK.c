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
struct stmp3xxx_pinmux_bank {int /*<<< orphan*/  pin2irq; int /*<<< orphan*/  irqen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct stmp3xxx_pinmux_bank**,unsigned int*) ; 

__attribute__((used)) static void FUNC2(unsigned irq)
{
	struct stmp3xxx_pinmux_bank *pm;
	unsigned gpio;

	FUNC1(irq, &pm, &gpio);
	FUNC0(1 << gpio, pm->irqen);
	FUNC0(1 << gpio, pm->pin2irq);
}