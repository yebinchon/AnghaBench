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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int u32 ;
struct radeon_framebuffer {struct drm_gem_object* obj; } ;
struct TYPE_9__ {int tile_config; } ;
struct TYPE_8__ {int tile_config; } ;
struct TYPE_7__ {int tile_config; } ;
struct TYPE_10__ {TYPE_4__ evergreen; TYPE_3__ cayman; TYPE_2__ si; } ;
struct radeon_device {scalar_t__ family; TYPE_5__ config; } ;
struct radeon_crtc {int crtc_id; scalar_t__ crtc_offset; } ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int bits_per_pixel; int width; int height; int* pitches; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_6__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {struct drm_framebuffer* fb; TYPE_1__ mode; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ AVIVO_D1VGA_CONTROL ; 
 scalar_t__ AVIVO_D2VGA_CONTROL ; 
 scalar_t__ CHIP_CAYMAN ; 
 scalar_t__ CHIP_PITCAIRN ; 
 scalar_t__ CHIP_TAHITI ; 
 scalar_t__ CHIP_VERDE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  EVERGREEN_ADDR_SURF_16_BANK ; 
 int /*<<< orphan*/  EVERGREEN_ADDR_SURF_4_BANK ; 
 int /*<<< orphan*/  EVERGREEN_ADDR_SURF_8_BANK ; 
 scalar_t__ EVERGREEN_D3VGA_CONTROL ; 
 scalar_t__ EVERGREEN_D4VGA_CONTROL ; 
 scalar_t__ EVERGREEN_D5VGA_CONTROL ; 
 scalar_t__ EVERGREEN_D6VGA_CONTROL ; 
 scalar_t__ EVERGREEN_DESKTOP_HEIGHT ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_ARRAY_1D_TILED_THIN1 ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_ARRAY_2D_TILED_THIN1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 scalar_t__ EVERGREEN_GRPH_CONTROL ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_DEPTH_16BPP ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_DEPTH_32BPP ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_DEPTH_8BPP ; 
 scalar_t__ EVERGREEN_GRPH_ENABLE ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_ENDIAN_8IN16 ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_ENDIAN_8IN32 ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_ENDIAN_NONE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVERGREEN_GRPH_FLIP_CONTROL ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_FORMAT_ARGB1555 ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_FORMAT_ARGB565 ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_FORMAT_ARGB8888 ; 
 int /*<<< orphan*/  EVERGREEN_GRPH_FORMAT_INDEXED ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVERGREEN_GRPH_PITCH ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 int EVERGREEN_GRPH_SURFACE_ADDRESS_MASK ; 
 scalar_t__ EVERGREEN_GRPH_SURFACE_OFFSET_X ; 
 scalar_t__ EVERGREEN_GRPH_SURFACE_OFFSET_Y ; 
 int EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN ; 
 scalar_t__ EVERGREEN_GRPH_SWAP_CONTROL ; 
 int FUNC10 (unsigned int) ; 
 scalar_t__ EVERGREEN_GRPH_X_END ; 
 scalar_t__ EVERGREEN_GRPH_X_START ; 
 scalar_t__ EVERGREEN_GRPH_Y_END ; 
 scalar_t__ EVERGREEN_GRPH_Y_START ; 
 scalar_t__ EVERGREEN_MASTER_UPDATE_MODE ; 
 scalar_t__ EVERGREEN_VIEWPORT_SIZE ; 
 scalar_t__ EVERGREEN_VIEWPORT_START ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_TILING_MACRO ; 
 int RADEON_TILING_MICRO ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  SI_ADDR_SURF_P4_8x16 ; 
 int /*<<< orphan*/  SI_ADDR_SURF_P8_32x32_8x16 ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 struct radeon_bo* FUNC15 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_bo*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct radeon_bo*) ; 
 int FUNC19 (struct radeon_bo*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC20 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_bo*) ; 
 struct radeon_crtc* FUNC23 (struct drm_crtc*) ; 
 struct radeon_framebuffer* FUNC24 (struct drm_framebuffer*) ; 
 scalar_t__ FUNC25 (int) ; 
 int FUNC26 (scalar_t__) ; 

__attribute__((used)) static int FUNC27(struct drm_crtc *crtc,
				 struct drm_framebuffer *fb,
				 int x, int y, int atomic)
{
	struct radeon_crtc *radeon_crtc = FUNC23(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_framebuffer *radeon_fb;
	struct drm_framebuffer *target_fb;
	struct drm_gem_object *obj;
	struct radeon_bo *rbo;
	uint64_t fb_location;
	uint32_t fb_format, fb_pitch_pixels, tiling_flags;
	unsigned bankw, bankh, mtaspect, tile_split;
	u32 fb_swap = FUNC6(EVERGREEN_GRPH_ENDIAN_NONE);
	u32 tmp, viewport_w, viewport_h;
	int r;

	/* no fb bound */
	if (!atomic && !crtc->fb) {
		FUNC0("No FB bound\n");
		return 0;
	}

	if (atomic) {
		radeon_fb = FUNC24(fb);
		target_fb = fb;
	}
	else {
		radeon_fb = FUNC24(crtc->fb);
		target_fb = crtc->fb;
	}

	/* If atomic, assume fb object is pinned & idle & fenced and
	 * just update base pointers
	 */
	obj = radeon_fb->obj;
	rbo = FUNC15(obj);
	r = FUNC20(rbo, false);
	if (FUNC25(r != 0))
		return r;

	if (atomic)
		fb_location = FUNC18(rbo);
	else {
		r = FUNC19(rbo, RADEON_GEM_DOMAIN_VRAM, &fb_location);
		if (FUNC25(r != 0)) {
			FUNC22(rbo);
			return -EINVAL;
		}
	}

	FUNC17(rbo, &tiling_flags, NULL);
	FUNC22(rbo);

	switch (target_fb->bits_per_pixel) {
	case 8:
		fb_format = (FUNC5(EVERGREEN_GRPH_DEPTH_8BPP) |
			     FUNC7(EVERGREEN_GRPH_FORMAT_INDEXED));
		break;
	case 15:
		fb_format = (FUNC5(EVERGREEN_GRPH_DEPTH_16BPP) |
			     FUNC7(EVERGREEN_GRPH_FORMAT_ARGB1555));
		break;
	case 16:
		fb_format = (FUNC5(EVERGREEN_GRPH_DEPTH_16BPP) |
			     FUNC7(EVERGREEN_GRPH_FORMAT_ARGB565));
#ifdef __BIG_ENDIAN
		fb_swap = EVERGREEN_GRPH_ENDIAN_SWAP(EVERGREEN_GRPH_ENDIAN_8IN16);
#endif
		break;
	case 24:
	case 32:
		fb_format = (FUNC5(EVERGREEN_GRPH_DEPTH_32BPP) |
			     FUNC7(EVERGREEN_GRPH_FORMAT_ARGB8888));
#ifdef __BIG_ENDIAN
		fb_swap = EVERGREEN_GRPH_ENDIAN_SWAP(EVERGREEN_GRPH_ENDIAN_8IN32);
#endif
		break;
	default:
		FUNC1("Unsupported screen depth %d\n",
			  target_fb->bits_per_pixel);
		return -EINVAL;
	}

	if (tiling_flags & RADEON_TILING_MACRO) {
		if (rdev->family >= CHIP_TAHITI)
			tmp = rdev->config.si.tile_config;
		else if (rdev->family >= CHIP_CAYMAN)
			tmp = rdev->config.cayman.tile_config;
		else
			tmp = rdev->config.evergreen.tile_config;

		switch ((tmp & 0xf0) >> 4) {
		case 0: /* 4 banks */
			fb_format |= FUNC9(EVERGREEN_ADDR_SURF_4_BANK);
			break;
		case 1: /* 8 banks */
		default:
			fb_format |= FUNC9(EVERGREEN_ADDR_SURF_8_BANK);
			break;
		case 2: /* 16 banks */
			fb_format |= FUNC9(EVERGREEN_ADDR_SURF_16_BANK);
			break;
		}

		fb_format |= FUNC2(EVERGREEN_GRPH_ARRAY_2D_TILED_THIN1);

		FUNC14(tiling_flags, &bankw, &bankh, &mtaspect, &tile_split);
		fb_format |= FUNC10(tile_split);
		fb_format |= FUNC4(bankw);
		fb_format |= FUNC3(bankh);
		fb_format |= FUNC8(mtaspect);
	} else if (tiling_flags & RADEON_TILING_MICRO)
		fb_format |= FUNC2(EVERGREEN_GRPH_ARRAY_1D_TILED_THIN1);

	if ((rdev->family == CHIP_TAHITI) ||
	    (rdev->family == CHIP_PITCAIRN))
		fb_format |= FUNC12(SI_ADDR_SURF_P8_32x32_8x16);
	else if (rdev->family == CHIP_VERDE)
		fb_format |= FUNC12(SI_ADDR_SURF_P4_8x16);

	switch (radeon_crtc->crtc_id) {
	case 0:
		FUNC13(AVIVO_D1VGA_CONTROL, 0);
		break;
	case 1:
		FUNC13(AVIVO_D2VGA_CONTROL, 0);
		break;
	case 2:
		FUNC13(EVERGREEN_D3VGA_CONTROL, 0);
		break;
	case 3:
		FUNC13(EVERGREEN_D4VGA_CONTROL, 0);
		break;
	case 4:
		FUNC13(EVERGREEN_D5VGA_CONTROL, 0);
		break;
	case 5:
		FUNC13(EVERGREEN_D6VGA_CONTROL, 0);
		break;
	default:
		break;
	}

	FUNC13(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
	       FUNC26(fb_location));
	FUNC13(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
	       FUNC26(fb_location));
	FUNC13(EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32)fb_location & EVERGREEN_GRPH_SURFACE_ADDRESS_MASK);
	FUNC13(EVERGREEN_GRPH_SECONDARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32) fb_location & EVERGREEN_GRPH_SURFACE_ADDRESS_MASK);
	FUNC13(EVERGREEN_GRPH_CONTROL + radeon_crtc->crtc_offset, fb_format);
	FUNC13(EVERGREEN_GRPH_SWAP_CONTROL + radeon_crtc->crtc_offset, fb_swap);

	FUNC13(EVERGREEN_GRPH_SURFACE_OFFSET_X + radeon_crtc->crtc_offset, 0);
	FUNC13(EVERGREEN_GRPH_SURFACE_OFFSET_Y + radeon_crtc->crtc_offset, 0);
	FUNC13(EVERGREEN_GRPH_X_START + radeon_crtc->crtc_offset, 0);
	FUNC13(EVERGREEN_GRPH_Y_START + radeon_crtc->crtc_offset, 0);
	FUNC13(EVERGREEN_GRPH_X_END + radeon_crtc->crtc_offset, target_fb->width);
	FUNC13(EVERGREEN_GRPH_Y_END + radeon_crtc->crtc_offset, target_fb->height);

	fb_pitch_pixels = target_fb->pitches[0] / (target_fb->bits_per_pixel / 8);
	FUNC13(EVERGREEN_GRPH_PITCH + radeon_crtc->crtc_offset, fb_pitch_pixels);
	FUNC13(EVERGREEN_GRPH_ENABLE + radeon_crtc->crtc_offset, 1);

	FUNC13(EVERGREEN_DESKTOP_HEIGHT + radeon_crtc->crtc_offset,
	       target_fb->height);
	x &= ~3;
	y &= ~1;
	FUNC13(EVERGREEN_VIEWPORT_START + radeon_crtc->crtc_offset,
	       (x << 16) | y);
	viewport_w = crtc->mode.hdisplay;
	viewport_h = (crtc->mode.vdisplay + 1) & ~1;
	FUNC13(EVERGREEN_VIEWPORT_SIZE + radeon_crtc->crtc_offset,
	       (viewport_w << 16) | viewport_h);

	/* pageflip setup */
	/* make sure flip is at vb rather than hb */
	tmp = FUNC11(EVERGREEN_GRPH_FLIP_CONTROL + radeon_crtc->crtc_offset);
	tmp &= ~EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN;
	FUNC13(EVERGREEN_GRPH_FLIP_CONTROL + radeon_crtc->crtc_offset, tmp);

	/* set pageflip to happen anywhere in vblank interval */
	FUNC13(EVERGREEN_MASTER_UPDATE_MODE + radeon_crtc->crtc_offset, 0);

	if (!atomic && fb && fb != crtc->fb) {
		radeon_fb = FUNC24(fb);
		rbo = FUNC15(radeon_fb->obj);
		r = FUNC20(rbo, false);
		if (FUNC25(r != 0))
			return r;
		FUNC21(rbo);
		FUNC22(rbo);
	}

	/* Bytes per pixel may have changed */
	FUNC16(rdev);

	return 0;
}