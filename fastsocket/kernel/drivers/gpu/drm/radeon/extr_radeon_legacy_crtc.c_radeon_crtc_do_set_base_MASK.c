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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u32 ;
struct radeon_framebuffer {struct drm_gem_object* obj; } ;
struct TYPE_2__ {int vram_start; } ;
struct radeon_device {TYPE_1__ mc; } ;
struct radeon_crtc {int legacy_display_base_addr; int crtc_id; int crtc_offset; } ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int bits_per_pixel; int* pitches; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_framebuffer* fb; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int R300_CRTC2_TILE_X0_Y0 ; 
 int R300_CRTC_MACRO_TILE_EN ; 
 int R300_CRTC_MICRO_TILE_BUFFER_DIS ; 
 int R300_CRTC_TILE_X0_Y0 ; 
 int R300_CRTC_X_Y_MODE_EN ; 
 int RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_CRTC_GEN_CNTL ; 
 int RADEON_CRTC_GUI_TRIG_OFFSET_LEFT_EN ; 
 int RADEON_CRTC_OFFSET ; 
 int RADEON_CRTC_OFFSET_CNTL ; 
 int RADEON_CRTC_PITCH ; 
 int RADEON_CRTC_TILE_EN ; 
 int RADEON_CRTC_VSTAT_MODE_MASK ; 
 int RADEON_DISPLAY_BASE_ADDR ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_TILING_MACRO ; 
 int RADEON_TILING_MICRO ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct radeon_bo* FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_bo*,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct radeon_bo*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC9 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_bo*) ; 
 struct radeon_crtc* FUNC12 (struct drm_crtc*) ; 
 struct radeon_framebuffer* FUNC13 (struct drm_framebuffer*) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct drm_crtc *crtc,
			 struct drm_framebuffer *fb,
			 int x, int y, int atomic)
{
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC12(crtc);
	struct radeon_framebuffer *radeon_fb;
	struct drm_framebuffer *target_fb;
	struct drm_gem_object *obj;
	struct radeon_bo *rbo;
	uint64_t base;
	uint32_t crtc_offset, crtc_offset_cntl, crtc_tile_x0_y0 = 0;
	uint32_t crtc_pitch, pitch_pixels;
	uint32_t tiling_flags;
	int format;
	uint32_t gen_cntl_reg, gen_cntl_val;
	int r;

	FUNC1("\n");
	/* no fb bound */
	if (!atomic && !crtc->fb) {
		FUNC1("No FB bound\n");
		return 0;
	}

	if (atomic) {
		radeon_fb = FUNC13(fb);
		target_fb = fb;
	}
	else {
		radeon_fb = FUNC13(crtc->fb);
		target_fb = crtc->fb;
	}

	switch (target_fb->bits_per_pixel) {
	case 8:
		format = 2;
		break;
	case 15:      /*  555 */
		format = 3;
		break;
	case 16:      /*  565 */
		format = 4;
		break;
	case 24:      /*  RGB */
		format = 5;
		break;
	case 32:      /* xRGB */
		format = 6;
		break;
	default:
		return false;
	}

	/* Pin framebuffer & get tilling informations */
	obj = radeon_fb->obj;
	rbo = FUNC5(obj);
	r = FUNC9(rbo, false);
	if (FUNC14(r != 0))
		return r;
	/* Only 27 bit offset for legacy CRTC */
	r = FUNC8(rbo, RADEON_GEM_DOMAIN_VRAM, 1 << 27,
				     &base);
	if (FUNC14(r != 0)) {
		FUNC11(rbo);
		return -EINVAL;
	}
	FUNC7(rbo, &tiling_flags, NULL);
	FUNC11(rbo);
	if (tiling_flags & RADEON_TILING_MICRO)
		FUNC2("trying to scanout microtiled buffer\n");

	/* if scanout was in GTT this really wouldn't work */
	/* crtc offset is from display base addr not FB location */
	radeon_crtc->legacy_display_base_addr = rdev->mc.vram_start;

	base -= radeon_crtc->legacy_display_base_addr;

	crtc_offset_cntl = 0;

	pitch_pixels = target_fb->pitches[0] / (target_fb->bits_per_pixel / 8);
	crtc_pitch  = (((pitch_pixels * target_fb->bits_per_pixel) +
			((target_fb->bits_per_pixel * 8) - 1)) /
		       (target_fb->bits_per_pixel * 8));
	crtc_pitch |= crtc_pitch << 16;

	crtc_offset_cntl |= RADEON_CRTC_GUI_TRIG_OFFSET_LEFT_EN;
	if (tiling_flags & RADEON_TILING_MACRO) {
		if (FUNC0(rdev))
			crtc_offset_cntl |= (R300_CRTC_X_Y_MODE_EN |
					     R300_CRTC_MICRO_TILE_BUFFER_DIS |
					     R300_CRTC_MACRO_TILE_EN);
		else
			crtc_offset_cntl |= RADEON_CRTC_TILE_EN;
	} else {
		if (FUNC0(rdev))
			crtc_offset_cntl &= ~(R300_CRTC_X_Y_MODE_EN |
					      R300_CRTC_MICRO_TILE_BUFFER_DIS |
					      R300_CRTC_MACRO_TILE_EN);
		else
			crtc_offset_cntl &= ~RADEON_CRTC_TILE_EN;
	}

	if (tiling_flags & RADEON_TILING_MACRO) {
		if (FUNC0(rdev)) {
			crtc_tile_x0_y0 = x | (y << 16);
			base &= ~0x7ff;
		} else {
			int byteshift = target_fb->bits_per_pixel >> 4;
			int tile_addr = (((y >> 3) * pitch_pixels +  x) >> (8 - byteshift)) << 11;
			base += tile_addr + ((x << byteshift) % 256) + ((y % 8) << 8);
			crtc_offset_cntl |= (y % 16);
		}
	} else {
		int offset = y * pitch_pixels + x;
		switch (target_fb->bits_per_pixel) {
		case 8:
			offset *= 1;
			break;
		case 15:
		case 16:
			offset *= 2;
			break;
		case 24:
			offset *= 3;
			break;
		case 32:
			offset *= 4;
			break;
		default:
			return false;
		}
		base += offset;
	}

	base &= ~7;

	if (radeon_crtc->crtc_id == 1)
		gen_cntl_reg = RADEON_CRTC2_GEN_CNTL;
	else
		gen_cntl_reg = RADEON_CRTC_GEN_CNTL;

	gen_cntl_val = FUNC3(gen_cntl_reg);
	gen_cntl_val &= ~(0xf << 8);
	gen_cntl_val |= (format << 8);
	gen_cntl_val &= ~RADEON_CRTC_VSTAT_MODE_MASK;
	FUNC4(gen_cntl_reg, gen_cntl_val);

	crtc_offset = (u32)base;

	FUNC4(RADEON_DISPLAY_BASE_ADDR + radeon_crtc->crtc_offset, radeon_crtc->legacy_display_base_addr);

	if (FUNC0(rdev)) {
		if (radeon_crtc->crtc_id)
			FUNC4(R300_CRTC2_TILE_X0_Y0, crtc_tile_x0_y0);
		else
			FUNC4(R300_CRTC_TILE_X0_Y0, crtc_tile_x0_y0);
	}
	FUNC4(RADEON_CRTC_OFFSET_CNTL + radeon_crtc->crtc_offset, crtc_offset_cntl);
	FUNC4(RADEON_CRTC_OFFSET + radeon_crtc->crtc_offset, crtc_offset);
	FUNC4(RADEON_CRTC_PITCH + radeon_crtc->crtc_offset, crtc_pitch);

	if (!atomic && fb && fb != crtc->fb) {
		radeon_fb = FUNC13(fb);
		rbo = FUNC5(radeon_fb->obj);
		r = FUNC9(rbo, false);
		if (FUNC14(r != 0))
			return r;
		FUNC10(rbo);
		FUNC11(rbo);
	}

	/* Bytes per pixel may have changed */
	FUNC6(rdev);

	return 0;
}