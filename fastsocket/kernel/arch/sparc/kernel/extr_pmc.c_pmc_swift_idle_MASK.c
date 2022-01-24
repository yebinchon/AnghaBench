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
 int AUXIO_LED ; 
 int PMC_IDLE_ON ; 
 int /*<<< orphan*/  PMC_IDLE_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(void)
{
#ifdef PMC_DEBUG_LED
	set_auxio(0x00, AUXIO_LED);
#endif

	FUNC1(FUNC0(PMC_IDLE_REG) | PMC_IDLE_ON, PMC_IDLE_REG);

#ifdef PMC_DEBUG_LED
	set_auxio(AUXIO_LED, 0x00);
#endif
}