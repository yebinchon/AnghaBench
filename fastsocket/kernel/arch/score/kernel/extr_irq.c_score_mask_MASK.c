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
 scalar_t__ INT_MASKH ; 
 scalar_t__ INT_MASKL ; 
 scalar_t__ SCORE_PIC ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int irq_nr)
{
	unsigned int irq_source = 63 - irq_nr;

	if (irq_source < 32)
		FUNC1((FUNC0(SCORE_PIC + INT_MASKL) | \
			(1 << irq_source)), SCORE_PIC + INT_MASKL);
	else
		FUNC1((FUNC0(SCORE_PIC + INT_MASKH) | \
			(1 << (irq_source - 32))), SCORE_PIC + INT_MASKH);
}