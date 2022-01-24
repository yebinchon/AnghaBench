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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IT8152_INTC_LDCNIRR ; 
 int /*<<< orphan*/  IT8152_INTC_LPCNIRR ; 
 int /*<<< orphan*/  IT8152_INTC_PDCNIRR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IT8152_LD_IRQ_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IT8152_LP_IRQ_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IT8152_PD_IRQ_COUNT ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(unsigned int irq, struct irq_desc *desc)
{
       int bits_pd, bits_lp, bits_ld;
       int i;

       while (1) {
	       /* Read all */
	       bits_pd = FUNC4(IT8152_INTC_PDCNIRR);
	       bits_lp = FUNC4(IT8152_INTC_LPCNIRR);
	       bits_ld = FUNC4(IT8152_INTC_LDCNIRR);

	       /* Ack */
	       FUNC5((~bits_pd), IT8152_INTC_PDCNIRR);
	       FUNC5((~bits_lp), IT8152_INTC_LPCNIRR);
	       FUNC5((~bits_ld), IT8152_INTC_LDCNIRR);

	       if (!(bits_ld | bits_lp | bits_pd)) {
		       /* Re-read to guarantee, that there was a moment of
			  time, when they all three were 0. */
		       bits_pd = FUNC4(IT8152_INTC_PDCNIRR);
		       bits_lp = FUNC4(IT8152_INTC_LPCNIRR);
		       bits_ld = FUNC4(IT8152_INTC_LDCNIRR);
		       if (!(bits_ld | bits_lp | bits_pd))
			       return;
	       }

	       bits_pd &= ((1 << IT8152_PD_IRQ_COUNT) - 1);
	       while (bits_pd) {
		       i = FUNC3(bits_pd);
		       FUNC6(FUNC2(i));
		       bits_pd &= ~(1 << i);
	       }

	       bits_lp &= ((1 << IT8152_LP_IRQ_COUNT) - 1);
	       while (bits_lp) {
		       i = FUNC3(bits_lp);
		       FUNC6(FUNC1(i));
		       bits_lp &= ~(1 << i);
	       }

	       bits_ld &= ((1 << IT8152_LD_IRQ_COUNT) - 1);
	       while (bits_ld) {
		       i = FUNC3(bits_ld);
		       FUNC6(FUNC0(i));
		       bits_ld &= ~(1 << i);
	       }
       }
}