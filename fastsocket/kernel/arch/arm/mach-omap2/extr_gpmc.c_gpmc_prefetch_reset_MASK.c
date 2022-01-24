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
 int /*<<< orphan*/  GPMC_PREFETCH_CONFIG1 ; 
 int /*<<< orphan*/  GPMC_PREFETCH_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(void)
{
	/* Stop the PFPW engine */
	FUNC0(GPMC_PREFETCH_CONTROL, 0x0);

	/* Reset/disable the PFPW engine */
	FUNC0(GPMC_PREFETCH_CONFIG1, 0x0);
}