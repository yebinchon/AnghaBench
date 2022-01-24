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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ MPSC_CHR_2 ; 
 int MPSC_CHR_2_RA ; 
 int MPSC_CHR_2_TA ; 
 int SDMA_SDCM ; 
 int SDMA_SDCM_AR ; 
 int SDMA_SDCM_AT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ mpsc_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(volatile char *sdma_base)
{
	FUNC1((u32 *)(mpsc_base + MPSC_CHR_2),MPSC_CHR_2_TA | MPSC_CHR_2_RA);
	FUNC1((u32 *)(sdma_base + SDMA_SDCM), SDMA_SDCM_AR | SDMA_SDCM_AT);

	while ((FUNC0((u32 *)(sdma_base + SDMA_SDCM))
				& (SDMA_SDCM_AR | SDMA_SDCM_AT)) != 0)
		FUNC2(100);
}