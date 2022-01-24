#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int rptr; int ptr_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ring; int /*<<< orphan*/  enabled; } ;
struct TYPE_7__ {int disp_int; int disp_int_cont; int disp_int_cont2; int disp_int_cont3; int disp_int_cont4; int disp_int_cont5; } ;
struct TYPE_8__ {TYPE_2__ evergreen; } ;
struct TYPE_9__ {TYPE_3__ stat_regs; int /*<<< orphan*/ * pflip; int /*<<< orphan*/  vblank_queue; int /*<<< orphan*/ * crtc_vblank_int; } ;
struct TYPE_6__ {int vblank_sync; } ;
struct radeon_device {TYPE_5__ ih; int /*<<< orphan*/  hotplug_work; int /*<<< orphan*/  dev; TYPE_4__ irq; TYPE_1__ pm; int /*<<< orphan*/  ddev; scalar_t__ shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAYMAN_RING_TYPE_CP1_INDEX ; 
 int /*<<< orphan*/  CAYMAN_RING_TYPE_CP2_INDEX ; 
 int /*<<< orphan*/  CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int DC_HPD1_INTERRUPT ; 
 int DC_HPD2_INTERRUPT ; 
 int DC_HPD3_INTERRUPT ; 
 int DC_HPD4_INTERRUPT ; 
 int DC_HPD5_INTERRUPT ; 
 int DC_HPD6_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IH_RB_RPTR ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int LB_D1_VBLANK_INTERRUPT ; 
 int LB_D1_VLINE_INTERRUPT ; 
 int LB_D2_VBLANK_INTERRUPT ; 
 int LB_D2_VLINE_INTERRUPT ; 
 int LB_D3_VBLANK_INTERRUPT ; 
 int LB_D3_VLINE_INTERRUPT ; 
 int LB_D4_VBLANK_INTERRUPT ; 
 int LB_D4_VLINE_INTERRUPT ; 
 int LB_D5_VBLANK_INTERRUPT ; 
 int LB_D5_VLINE_INTERRUPT ; 
 int LB_D6_VBLANK_INTERRUPT ; 
 int LB_D6_VLINE_INTERRUPT ; 
 int /*<<< orphan*/  R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_CONTEXT1_CNTL2 ; 
 int /*<<< orphan*/  VM_CONTEXT1_PROTECTION_FAULT_ADDR ; 
 int /*<<< orphan*/  VM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct radeon_device *rdev)
{
	u32 wptr;
	u32 rptr;
	u32 src_id, src_data, ring_id;
	u32 ring_index;
	bool queue_hotplug = false;

	if (!rdev->ih.enabled || rdev->shutdown)
		return IRQ_NONE;

	wptr = FUNC14(rdev);

restart_ih:
	/* is somebody else already processing irqs? */
	if (FUNC6(&rdev->ih.lock, 1))
		return IRQ_NONE;

	rptr = rdev->ih.rptr;
	FUNC0("si_irq_process start: rptr %d, wptr %d\n", rptr, wptr);

	/* Order reading of wptr vs. reading of IH ring data */
	FUNC12();

	/* display interrupts */
	FUNC15(rdev);

	while (rptr != wptr) {
		/* wptr/rptr are in bytes! */
		ring_index = rptr / 4;
		src_id =  FUNC9(rdev->ih.ring[ring_index]) & 0xff;
		src_data = FUNC9(rdev->ih.ring[ring_index + 1]) & 0xfffffff;
		ring_id = FUNC9(rdev->ih.ring[ring_index + 2]) & 0xff;

		switch (src_id) {
		case 1: /* D1 vblank/vline */
			switch (src_data) {
			case 0: /* D1 vblank */
				if (rdev->irq.stat_regs.evergreen.disp_int & LB_D1_VBLANK_INTERRUPT) {
					if (rdev->irq.crtc_vblank_int[0]) {
						FUNC8(rdev->ddev, 0);
						rdev->pm.vblank_sync = true;
						FUNC16(&rdev->irq.vblank_queue);
					}
					if (FUNC4(&rdev->irq.pflip[0]))
						FUNC10(rdev, 0);
					rdev->irq.stat_regs.evergreen.disp_int &= ~LB_D1_VBLANK_INTERRUPT;
					FUNC0("IH: D1 vblank\n");
				}
				break;
			case 1: /* D1 vline */
				if (rdev->irq.stat_regs.evergreen.disp_int & LB_D1_VLINE_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int &= ~LB_D1_VLINE_INTERRUPT;
					FUNC0("IH: D1 vline\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 2: /* D2 vblank/vline */
			switch (src_data) {
			case 0: /* D2 vblank */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont & LB_D2_VBLANK_INTERRUPT) {
					if (rdev->irq.crtc_vblank_int[1]) {
						FUNC8(rdev->ddev, 1);
						rdev->pm.vblank_sync = true;
						FUNC16(&rdev->irq.vblank_queue);
					}
					if (FUNC4(&rdev->irq.pflip[1]))
						FUNC10(rdev, 1);
					rdev->irq.stat_regs.evergreen.disp_int_cont &= ~LB_D2_VBLANK_INTERRUPT;
					FUNC0("IH: D2 vblank\n");
				}
				break;
			case 1: /* D2 vline */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont & LB_D2_VLINE_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont &= ~LB_D2_VLINE_INTERRUPT;
					FUNC0("IH: D2 vline\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 3: /* D3 vblank/vline */
			switch (src_data) {
			case 0: /* D3 vblank */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont2 & LB_D3_VBLANK_INTERRUPT) {
					if (rdev->irq.crtc_vblank_int[2]) {
						FUNC8(rdev->ddev, 2);
						rdev->pm.vblank_sync = true;
						FUNC16(&rdev->irq.vblank_queue);
					}
					if (FUNC4(&rdev->irq.pflip[2]))
						FUNC10(rdev, 2);
					rdev->irq.stat_regs.evergreen.disp_int_cont2 &= ~LB_D3_VBLANK_INTERRUPT;
					FUNC0("IH: D3 vblank\n");
				}
				break;
			case 1: /* D3 vline */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont2 & LB_D3_VLINE_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont2 &= ~LB_D3_VLINE_INTERRUPT;
					FUNC0("IH: D3 vline\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 4: /* D4 vblank/vline */
			switch (src_data) {
			case 0: /* D4 vblank */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont3 & LB_D4_VBLANK_INTERRUPT) {
					if (rdev->irq.crtc_vblank_int[3]) {
						FUNC8(rdev->ddev, 3);
						rdev->pm.vblank_sync = true;
						FUNC16(&rdev->irq.vblank_queue);
					}
					if (FUNC4(&rdev->irq.pflip[3]))
						FUNC10(rdev, 3);
					rdev->irq.stat_regs.evergreen.disp_int_cont3 &= ~LB_D4_VBLANK_INTERRUPT;
					FUNC0("IH: D4 vblank\n");
				}
				break;
			case 1: /* D4 vline */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont3 & LB_D4_VLINE_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont3 &= ~LB_D4_VLINE_INTERRUPT;
					FUNC0("IH: D4 vline\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 5: /* D5 vblank/vline */
			switch (src_data) {
			case 0: /* D5 vblank */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont4 & LB_D5_VBLANK_INTERRUPT) {
					if (rdev->irq.crtc_vblank_int[4]) {
						FUNC8(rdev->ddev, 4);
						rdev->pm.vblank_sync = true;
						FUNC16(&rdev->irq.vblank_queue);
					}
					if (FUNC4(&rdev->irq.pflip[4]))
						FUNC10(rdev, 4);
					rdev->irq.stat_regs.evergreen.disp_int_cont4 &= ~LB_D5_VBLANK_INTERRUPT;
					FUNC0("IH: D5 vblank\n");
				}
				break;
			case 1: /* D5 vline */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont4 & LB_D5_VLINE_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont4 &= ~LB_D5_VLINE_INTERRUPT;
					FUNC0("IH: D5 vline\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 6: /* D6 vblank/vline */
			switch (src_data) {
			case 0: /* D6 vblank */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont5 & LB_D6_VBLANK_INTERRUPT) {
					if (rdev->irq.crtc_vblank_int[5]) {
						FUNC8(rdev->ddev, 5);
						rdev->pm.vblank_sync = true;
						FUNC16(&rdev->irq.vblank_queue);
					}
					if (FUNC4(&rdev->irq.pflip[5]))
						FUNC10(rdev, 5);
					rdev->irq.stat_regs.evergreen.disp_int_cont5 &= ~LB_D6_VBLANK_INTERRUPT;
					FUNC0("IH: D6 vblank\n");
				}
				break;
			case 1: /* D6 vline */
				if (rdev->irq.stat_regs.evergreen.disp_int_cont5 & LB_D6_VLINE_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont5 &= ~LB_D6_VLINE_INTERRUPT;
					FUNC0("IH: D6 vline\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 42: /* HPD hotplug */
			switch (src_data) {
			case 0:
				if (rdev->irq.stat_regs.evergreen.disp_int & DC_HPD1_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int &= ~DC_HPD1_INTERRUPT;
					queue_hotplug = true;
					FUNC0("IH: HPD1\n");
				}
				break;
			case 1:
				if (rdev->irq.stat_regs.evergreen.disp_int_cont & DC_HPD2_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont &= ~DC_HPD2_INTERRUPT;
					queue_hotplug = true;
					FUNC0("IH: HPD2\n");
				}
				break;
			case 2:
				if (rdev->irq.stat_regs.evergreen.disp_int_cont2 & DC_HPD3_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont2 &= ~DC_HPD3_INTERRUPT;
					queue_hotplug = true;
					FUNC0("IH: HPD3\n");
				}
				break;
			case 3:
				if (rdev->irq.stat_regs.evergreen.disp_int_cont3 & DC_HPD4_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont3 &= ~DC_HPD4_INTERRUPT;
					queue_hotplug = true;
					FUNC0("IH: HPD4\n");
				}
				break;
			case 4:
				if (rdev->irq.stat_regs.evergreen.disp_int_cont4 & DC_HPD5_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont4 &= ~DC_HPD5_INTERRUPT;
					queue_hotplug = true;
					FUNC0("IH: HPD5\n");
				}
				break;
			case 5:
				if (rdev->irq.stat_regs.evergreen.disp_int_cont5 & DC_HPD6_INTERRUPT) {
					rdev->irq.stat_regs.evergreen.disp_int_cont5 &= ~DC_HPD6_INTERRUPT;
					queue_hotplug = true;
					FUNC0("IH: HPD6\n");
				}
				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 146:
		case 147:
			FUNC7(rdev->dev, "GPU fault detected: %d 0x%08x\n", src_id, src_data);
			FUNC7(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
				FUNC1(VM_CONTEXT1_PROTECTION_FAULT_ADDR));
			FUNC7(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
				FUNC1(VM_CONTEXT1_PROTECTION_FAULT_STATUS));
			/* reset addr and status */
			FUNC3(VM_CONTEXT1_CNTL2, 1, ~1);
			break;
		case 176: /* RINGID0 CP_INT */
			FUNC11(rdev, RADEON_RING_TYPE_GFX_INDEX);
			break;
		case 177: /* RINGID1 CP_INT */
			FUNC11(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
			break;
		case 178: /* RINGID2 CP_INT */
			FUNC11(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
			break;
		case 181: /* CP EOP event */
			FUNC0("IH: CP EOP\n");
			switch (ring_id) {
			case 0:
				FUNC11(rdev, RADEON_RING_TYPE_GFX_INDEX);
				break;
			case 1:
				FUNC11(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
				break;
			case 2:
				FUNC11(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
				break;
			}
			break;
		case 224: /* DMA trap event */
			FUNC0("IH: DMA trap\n");
			FUNC11(rdev, R600_RING_TYPE_DMA_INDEX);
			break;
		case 233: /* GUI IDLE */
			FUNC0("IH: GUI idle\n");
			break;
		case 244: /* DMA trap event */
			FUNC0("IH: DMA1 trap\n");
			FUNC11(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
			break;
		default:
			FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
			break;
		}

		/* wptr/rptr are in bytes! */
		rptr += 16;
		rptr &= rdev->ih.ptr_mask;
	}
	if (queue_hotplug)
		FUNC13(&rdev->hotplug_work);
	rdev->ih.rptr = rptr;
	FUNC2(IH_RB_RPTR, rdev->ih.rptr);
	FUNC5(&rdev->ih.lock, 0);

	/* make sure wptr hasn't changed while processing */
	wptr = FUNC14(rdev);
	if (wptr != rptr)
		goto restart_ih;

	return IRQ_HANDLED;
}