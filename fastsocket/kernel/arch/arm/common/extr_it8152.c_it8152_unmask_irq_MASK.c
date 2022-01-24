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
 int /*<<< orphan*/  IT8152_INTC_LDCNIMR ; 
 int /*<<< orphan*/  IT8152_INTC_LPCNIMR ; 
 int /*<<< orphan*/  IT8152_INTC_PDCNIMR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned int irq)
{
       if (irq >= FUNC0(0)) {
	       FUNC4((FUNC3(IT8152_INTC_LDCNIMR) &
			     ~(1 << (irq - FUNC0(0)))),
			    IT8152_INTC_LDCNIMR);
       } else if (irq >= FUNC1(0)) {
	       FUNC4((FUNC3(IT8152_INTC_LPCNIMR) &
			     ~(1 << (irq - FUNC1(0)))),
			    IT8152_INTC_LPCNIMR);
       } else if (irq >= FUNC2(0)) {
	       FUNC4((FUNC3(IT8152_INTC_PDCNIMR) &
			     ~(1 << (irq - FUNC2(0)))),
			    IT8152_INTC_PDCNIMR);
       }
}