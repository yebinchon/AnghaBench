#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_4__ {int disp_int; int hdmi0_status; } ;
struct TYPE_5__ {TYPE_1__ r500; } ;
struct TYPE_6__ {TYPE_2__ stat_regs; } ;
struct radeon_device {TYPE_3__ irq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000044_GEN_INT_STATUS ; 
 int /*<<< orphan*/  R_006534_D1MODE_VBLANK_STATUS ; 
 int /*<<< orphan*/  R_006D34_D2MODE_VBLANK_STATUS ; 
 int /*<<< orphan*/  R_007404_HDMI0_STATUS ; 
 int /*<<< orphan*/  R_007408_HDMI0_AUDIO_PACKET_CONTROL ; 
 int /*<<< orphan*/  R_007D08_DC_HOT_PLUG_DETECT1_INT_CONTROL ; 
 int /*<<< orphan*/  R_007D18_DC_HOT_PLUG_DETECT2_INT_CONTROL ; 
 int /*<<< orphan*/  R_007EDC_DISP_INTERRUPT_STATUS ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline u32 FUNC16(struct radeon_device *rdev)
{
	uint32_t irqs = FUNC7(R_000044_GEN_INT_STATUS);
	uint32_t irq_mask = FUNC8(1);
	u32 tmp;

	if (FUNC1(irqs)) {
		rdev->irq.stat_regs.r500.disp_int = FUNC7(R_007EDC_DISP_INTERRUPT_STATUS);
		if (FUNC5(rdev->irq.stat_regs.r500.disp_int)) {
			FUNC15(R_006534_D1MODE_VBLANK_STATUS,
				FUNC9(1));
		}
		if (FUNC6(rdev->irq.stat_regs.r500.disp_int)) {
			FUNC15(R_006D34_D2MODE_VBLANK_STATUS,
				FUNC10(1));
		}
		if (FUNC3(rdev->irq.stat_regs.r500.disp_int)) {
			tmp = FUNC7(R_007D08_DC_HOT_PLUG_DETECT1_INT_CONTROL);
			tmp |= FUNC13(1);
			FUNC15(R_007D08_DC_HOT_PLUG_DETECT1_INT_CONTROL, tmp);
		}
		if (FUNC4(rdev->irq.stat_regs.r500.disp_int)) {
			tmp = FUNC7(R_007D18_DC_HOT_PLUG_DETECT2_INT_CONTROL);
			tmp |= FUNC14(1);
			FUNC15(R_007D18_DC_HOT_PLUG_DETECT2_INT_CONTROL, tmp);
		}
	} else {
		rdev->irq.stat_regs.r500.disp_int = 0;
	}

	if (FUNC0(rdev)) {
		rdev->irq.stat_regs.r500.hdmi0_status = FUNC7(R_007404_HDMI0_STATUS) &
			FUNC11(1);
		if (FUNC2(rdev->irq.stat_regs.r500.hdmi0_status)) {
			tmp = FUNC7(R_007408_HDMI0_AUDIO_PACKET_CONTROL);
			tmp |= FUNC12(1);
			FUNC15(R_007408_HDMI0_AUDIO_PACKET_CONTROL, tmp);
		}
	} else
		rdev->irq.stat_regs.r500.hdmi0_status = 0;

	if (irqs) {
		FUNC15(R_000044_GEN_INT_STATUS, irqs);
	}
	return irqs & irq_mask;
}