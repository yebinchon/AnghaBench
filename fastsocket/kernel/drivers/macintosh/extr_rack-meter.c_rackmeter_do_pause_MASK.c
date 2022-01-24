#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rackmeter_dma {scalar_t__ mark; int /*<<< orphan*/  buf2; int /*<<< orphan*/  buf1; } ;
struct rackmeter {int paused; int dma_buf_p; TYPE_1__* dma_regs; struct rackmeter_dma* dma_buf_v; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  cmdptr; int /*<<< orphan*/  cmdptr_hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int RUN ; 
 int SAMPLE_COUNT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(struct rackmeter *rm, int pause)
{
	struct rackmeter_dma *rdma = rm->dma_buf_v;

	FUNC4("rackmeter: %s\n", pause ? "paused" : "started");

	rm->paused = pause;
	if (pause) {
		FUNC0(rm->dma_regs);
		return;
	}
	FUNC2(rdma->buf1, 0, SAMPLE_COUNT & sizeof(u32));
	FUNC2(rdma->buf2, 0, SAMPLE_COUNT & sizeof(u32));

	rm->dma_buf_v->mark = 0;

	FUNC1();
	FUNC3(&rm->dma_regs->cmdptr_hi, 0);
	FUNC3(&rm->dma_regs->cmdptr, rm->dma_buf_p);
	FUNC3(&rm->dma_regs->control, (RUN << 16) | RUN);
}