#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dmacHw_HANDLE_t ;
struct TYPE_3__ {int module; int channel; } ;
typedef  TYPE_1__ dmacHw_CBLK_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,int) ; 

int FUNC15(dmacHw_HANDLE_t handle	/*   [ IN ] DMA Channel handle */
    ) {
	dmacHw_CBLK_t *pCblk = FUNC6(handle);
	int module = pCblk->module;
	int channel = pCblk->channel;

	/* Reinitialize the control block */
	FUNC14((void *)pCblk, 0, sizeof(dmacHw_CBLK_t));
	pCblk->module = module;
	pCblk->channel = channel;

	/* Enable DMA controller */
	FUNC2(pCblk->module);
	/* Reset DMA channel */
	FUNC10(pCblk->module, pCblk->channel);
	FUNC9(pCblk->module, pCblk->channel);
	FUNC8(pCblk->module, pCblk->channel);
	FUNC7(pCblk->module, pCblk->channel);

	/* Clear all raw interrupt status */
	FUNC12(pCblk->module, pCblk->channel);
	FUNC0(pCblk->module, pCblk->channel);
	FUNC4(pCblk->module, pCblk->channel);

	/* Mask event specific interrupts */
	FUNC13(pCblk->module, pCblk->channel);
	FUNC1(pCblk->module, pCblk->channel);
	FUNC11(pCblk->module, pCblk->channel);
	FUNC3(pCblk->module, pCblk->channel);
	FUNC5(pCblk->module, pCblk->channel);

	return 0;
}