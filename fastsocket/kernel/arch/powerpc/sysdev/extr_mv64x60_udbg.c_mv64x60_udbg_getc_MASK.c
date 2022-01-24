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
 scalar_t__ MPSC_0_CHR_10_OFFSET ; 
 int MPSC_INTR_CAUSE_RCC ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ mpsc_base ; 
 int /*<<< orphan*/  mpsc_intr_cause ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	int cause = 0;
	int c;

	while (!FUNC1())
		;

	c = FUNC0(mpsc_base + MPSC_0_CHR_10_OFFSET + 2);
	FUNC2(mpsc_base + MPSC_0_CHR_10_OFFSET + 2, c);
	FUNC3(mpsc_intr_cause, cause & ~MPSC_INTR_CAUSE_RCC);
	return c;
}