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
struct eic {unsigned int first_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  FUNC0 (struct eic*,int /*<<< orphan*/ ,int) ; 
 struct eic* FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	struct eic *eic = FUNC1(irq);
	FUNC0(eic, IER, 1 << (irq - eic->first_irq));
}