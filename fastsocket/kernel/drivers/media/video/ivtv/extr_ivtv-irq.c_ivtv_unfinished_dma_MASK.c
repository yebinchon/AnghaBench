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
struct ivtv {int cur_dma_stream; int /*<<< orphan*/  dma_waitq; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA ; 
 int /*<<< orphan*/  IVTV_REG_DMASTATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void FUNC6(unsigned long arg)
{
	struct ivtv *itv = (struct ivtv *)arg;

	if (!FUNC3(IVTV_F_I_DMA, &itv->i_flags))
		return;
	FUNC0("DMA TIMEOUT %08x %d\n", FUNC2(IVTV_REG_DMASTATUS), itv->cur_dma_stream);

	FUNC5(FUNC2(IVTV_REG_DMASTATUS) & 3, IVTV_REG_DMASTATUS);
	FUNC1(IVTV_F_I_UDMA, &itv->i_flags);
	FUNC1(IVTV_F_I_DMA, &itv->i_flags);
	itv->cur_dma_stream = -1;
	FUNC4(&itv->dma_waitq);
}