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
typedef  int u8 ;
typedef  int u32 ;
struct device {int dummy; } ;
struct b3dfg_dev {int triplets_dropped; int triplet_ready; int cur_dma_frame_idx; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  buffer_queue; int /*<<< orphan*/  triplets_dropped_lock; int /*<<< orphan*/  transmission_enabled; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B3D_REG_DMA_STS ; 
 int /*<<< orphan*/  B3D_REG_EC220_DMA_STS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct b3dfg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b3dfg_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct b3dfg_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct b3dfg_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct b3dfg_dev*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *dev_id)
{
	struct b3dfg_dev *fgdev = dev_id;
	struct device *dev = &fgdev->pdev->dev;
	u32 sts;
	u8 dropped;
	bool need_ack = 1;
	irqreturn_t res = IRQ_HANDLED;

	sts = FUNC0(fgdev, B3D_REG_DMA_STS);
	if (FUNC12(sts == 0)) {
		FUNC5(dev, "ignore interrupt, DMA status is 0\n");
		res = IRQ_NONE;
		goto out;
	}

	if (FUNC12(!fgdev->transmission_enabled)) {
		FUNC5(dev, "ignore interrupt, TX disabled\n");
		res = IRQ_HANDLED;
		goto out;
	}

	/* Handle dropped frames, as reported by the hardware. */
	dropped = (sts >> 8) & 0xff;
	FUNC2(dev, "intr: DMA_STS=%08x (drop=%d comp=%d next=%d)\n",
		sts, dropped, !!(sts & 0x4), sts & 0x3);
	if (FUNC12(dropped > 0)) {
		FUNC9(&fgdev->triplets_dropped_lock);
		fgdev->triplets_dropped += dropped;
		FUNC10(&fgdev->triplets_dropped_lock);
	}

	/* Handle a cable state change (i.e. the wand being unplugged). */
	if (sts & 0x08) {
		FUNC6(fgdev);
		goto out;
	}

	FUNC9(&fgdev->buffer_lock);
	if (FUNC12(FUNC7(&fgdev->buffer_queue))) {

		/* FIXME need more sanity checking here */
		FUNC4(dev, "buffer not ready for next transfer\n");
		fgdev->triplet_ready = 1;
		goto out_unlock;
	}

	/* Has a frame transfer been completed? */
	if (sts & 0x4) {
		u32 dma_status = FUNC0(fgdev, B3D_REG_EC220_DMA_STS);

		/* Check for DMA errors reported by the hardware. */
		if (FUNC12(dma_status & 0x1)) {
			FUNC3(dev, "EC220 error: %08x\n", dma_status);

			/* FIXME flesh out error handling */
			goto out_unlock;
		}

		/* Sanity check, we should have a frame index at this point. */
		if (FUNC12(fgdev->cur_dma_frame_idx == -1)) {
			FUNC3(dev, "completed but no last idx?\n");

			/* FIXME flesh out error handling */
			goto out_unlock;
		}

		FUNC11(fgdev);
	}

	/* Is there another frame transfer pending? */
	if (sts & 0x3)
		need_ack = FUNC8(fgdev, sts & 0x3);
	else
		fgdev->cur_dma_frame_idx = -1;

out_unlock:
	FUNC10(&fgdev->buffer_lock);
out:
	if (need_ack) {
		FUNC2(dev, "acknowledging interrupt\n");
		FUNC1(fgdev, B3D_REG_EC220_DMA_STS, 0x0b);
	}
	return res;
}