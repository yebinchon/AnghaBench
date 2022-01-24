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
typedef  int u32 ;
struct ccdc_vertical_dft {int* dft_corr_vert; int* dft_corr_horz; int* dft_corr_sub1; int* dft_corr_sub2; int* dft_corr_sub3; } ;

/* Variables and functions */
 int CCDC_DFCMEMCTL_DFCMWR_MASK ; 
 int /*<<< orphan*/  DFCMEM0 ; 
 int /*<<< orphan*/  DFCMEM1 ; 
 int /*<<< orphan*/  DFCMEM2 ; 
 int /*<<< orphan*/  DFCMEM3 ; 
 int /*<<< orphan*/  DFCMEM4 ; 
 int /*<<< orphan*/  DFCMEMCTL ; 
 int DFC_WRITE_WAIT_COUNT ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(int index, struct ccdc_vertical_dft *dfc)
{
/* TODO This is to be re-visited and adjusted */
#define DFC_WRITE_WAIT_COUNT	1000
	u32 val, count = DFC_WRITE_WAIT_COUNT;

	FUNC2(dfc->dft_corr_vert[index], DFCMEM0);
	FUNC2(dfc->dft_corr_horz[index], DFCMEM1);
	FUNC2(dfc->dft_corr_sub1[index], DFCMEM2);
	FUNC2(dfc->dft_corr_sub2[index], DFCMEM3);
	FUNC2(dfc->dft_corr_sub3[index], DFCMEM4);
	/* set WR bit to write */
	val = FUNC1(DFCMEMCTL) | CCDC_DFCMEMCTL_DFCMWR_MASK;
	FUNC2(val, DFCMEMCTL);

	/*
	 * Assume, it is very short. If we get an error, we need to
	 * adjust this value
	 */
	while (FUNC1(DFCMEMCTL) & CCDC_DFCMEMCTL_DFCMWR_MASK)
		count--;
	/*
	 * TODO We expect the count to be non-zero to be successful. Adjust
	 * the count if write requires more time
	 */

	if (count) {
		FUNC0(dev, "defect table write timeout !!!\n");
		return -1;
	}
	return 0;
}