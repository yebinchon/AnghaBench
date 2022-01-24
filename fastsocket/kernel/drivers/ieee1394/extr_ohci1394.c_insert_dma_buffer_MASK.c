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
struct ti_ohci {int dummy; } ;
struct dma_rcv_ctx {int num_desc; int /*<<< orphan*/  ctrlSet; int /*<<< orphan*/  ctx; TYPE_1__** prg_cpu; int /*<<< orphan*/  buf_size; scalar_t__ ohci; } ;
struct TYPE_2__ {int /*<<< orphan*/  branchAddress; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ti_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct dma_rcv_ctx *d, int idx)
{
	struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);
	FUNC0("Inserting dma buf ctx=%d idx=%d", d->ctx, idx);

	d->prg_cpu[idx]->status = FUNC2(d->buf_size);
	d->prg_cpu[idx]->branchAddress &= FUNC3(0xfffffff0);
	idx = (idx + d->num_desc - 1 ) % d->num_desc;
	d->prg_cpu[idx]->branchAddress |= FUNC3(0x00000001);

	/* To avoid a race, ensure 1394 interface hardware sees the inserted
	 * context program descriptors before it sees the wakeup bit set. */
	FUNC6();
	
	/* wake up the dma context if necessary */
	if (!(FUNC4(ohci, d->ctrlSet) & 0x400)) {
		FUNC1(KERN_INFO,
		      "Waking dma ctx=%d ... processing is probably too slow",
		      d->ctx);
	}

	/* do this always, to avoid race condition */
	FUNC5(ohci, d->ctrlSet, 0x1000);
}