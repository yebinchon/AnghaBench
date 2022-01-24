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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_crt {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_6__ {int pipe; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (int) ; 
 int PIPECONF_FORCE_BORDER ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  VGA_MSR_WRITE ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*,int) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status
FUNC14(struct intel_crt *crt)
{
	struct drm_device *dev = crt->base.base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t pipe = FUNC13(crt->base.base.crtc)->pipe;
	uint32_t save_bclrpat;
	uint32_t save_vtotal;
	uint32_t vtotal, vactive;
	uint32_t vsample;
	uint32_t vblank, vblank_start, vblank_end;
	uint32_t dsl;
	uint32_t bclrpat_reg;
	uint32_t vtotal_reg;
	uint32_t vblank_reg;
	uint32_t vsync_reg;
	uint32_t pipeconf_reg;
	uint32_t pipe_dsl_reg;
	uint8_t	st00;
	enum drm_connector_status status;

	FUNC1("starting load-detect on CRT\n");

	bclrpat_reg = FUNC0(pipe);
	vtotal_reg = FUNC11(pipe);
	vblank_reg = FUNC9(pipe);
	vsync_reg = FUNC10(pipe);
	pipeconf_reg = FUNC6(pipe);
	pipe_dsl_reg = FUNC7(pipe);

	save_bclrpat = FUNC2(bclrpat_reg);
	save_vtotal = FUNC2(vtotal_reg);
	vblank = FUNC2(vblank_reg);

	vtotal = ((save_vtotal >> 16) & 0xfff) + 1;
	vactive = (save_vtotal & 0x7ff) + 1;

	vblank_start = (vblank & 0xfff) + 1;
	vblank_end = ((vblank >> 16) & 0xfff) + 1;

	/* Set the border color to purple. */
	FUNC4(bclrpat_reg, 0x500050);

	if (!FUNC5(dev)) {
		uint32_t pipeconf = FUNC2(pipeconf_reg);
		FUNC4(pipeconf_reg, pipeconf | PIPECONF_FORCE_BORDER);
		FUNC8(pipeconf_reg);
		/* Wait for next Vblank to substitue
		 * border color for Color info */
		FUNC12(dev, pipe);
		st00 = FUNC3(VGA_MSR_WRITE);
		status = ((st00 & (1 << 4)) != 0) ?
			connector_status_connected :
			connector_status_disconnected;

		FUNC4(pipeconf_reg, pipeconf);
	} else {
		bool restore_vblank = false;
		int count, detect;

		/*
		* If there isn't any border, add some.
		* Yes, this will flicker
		*/
		if (vblank_start <= vactive && vblank_end >= vtotal) {
			uint32_t vsync = FUNC2(vsync_reg);
			uint32_t vsync_start = (vsync & 0xffff) + 1;

			vblank_start = vsync_start;
			FUNC4(vblank_reg,
				   (vblank_start - 1) |
				   ((vblank_end - 1) << 16));
			restore_vblank = true;
		}
		/* sample in the vertical border, selecting the larger one */
		if (vblank_start - vactive >= vtotal - vblank_end)
			vsample = (vblank_start + vactive) >> 1;
		else
			vsample = (vtotal + vblank_end) >> 1;

		/*
		 * Wait for the border to be displayed
		 */
		while (FUNC2(pipe_dsl_reg) >= vactive)
			;
		while ((dsl = FUNC2(pipe_dsl_reg)) <= vsample)
			;
		/*
		 * Watch ST00 for an entire scanline
		 */
		detect = 0;
		count = 0;
		do {
			count++;
			/* Read the ST00 VGA status register */
			st00 = FUNC3(VGA_MSR_WRITE);
			if (st00 & (1 << 4))
				detect++;
		} while ((FUNC2(pipe_dsl_reg) == dsl));

		/* restore vblank if necessary */
		if (restore_vblank)
			FUNC4(vblank_reg, vblank);
		/*
		 * If more than 3/4 of the scanline detected a monitor,
		 * then it is assumed to be present. This works even on i830,
		 * where there isn't any way to force the border color across
		 * the screen
		 */
		status = detect * 4 > count * 3 ?
			 connector_status_connected :
			 connector_status_disconnected;
	}

	/* Restore previous settings */
	FUNC4(bclrpat_reg, save_bclrpat);

	return status;
}