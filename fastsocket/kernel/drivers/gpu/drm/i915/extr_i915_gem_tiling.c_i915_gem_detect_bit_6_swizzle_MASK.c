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
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {int bit_6_swizzle_x; int bit_6_swizzle_y; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  C0DRB3 ; 
 int /*<<< orphan*/  C1DRB3 ; 
 int /*<<< orphan*/  DCC ; 
#define  DCC_ADDRESSING_MODE_DUAL_CHANNEL_ASYMMETRIC 130 
#define  DCC_ADDRESSING_MODE_DUAL_CHANNEL_INTERLEAVED 129 
 int DCC_ADDRESSING_MODE_MASK ; 
#define  DCC_ADDRESSING_MODE_SINGLE_CHANNEL 128 
 int DCC_CHANNEL_XOR_BIT_17 ; 
 int DCC_CHANNEL_XOR_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int I915_BIT_6_SWIZZLE_9 ; 
 int I915_BIT_6_SWIZZLE_9_10 ; 
 int I915_BIT_6_SWIZZLE_9_10_11 ; 
 int I915_BIT_6_SWIZZLE_9_10_17 ; 
 int I915_BIT_6_SWIZZLE_9_11 ; 
 int I915_BIT_6_SWIZZLE_9_17 ; 
 int I915_BIT_6_SWIZZLE_NONE ; 
 int I915_BIT_6_SWIZZLE_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 scalar_t__ FUNC8 (struct drm_device*) ; 
 scalar_t__ FUNC9 (struct drm_device*) ; 
 int MAD_DIMM_A_SIZE_MASK ; 
 int MAD_DIMM_B_SIZE_MASK ; 
 int /*<<< orphan*/  MAD_DIMM_C0 ; 
 int /*<<< orphan*/  MAD_DIMM_C1 ; 

void
FUNC10(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;
	uint32_t swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
	uint32_t swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;

	if (FUNC9(dev)) {
		swizzle_x = I915_BIT_6_SWIZZLE_NONE;
		swizzle_y = I915_BIT_6_SWIZZLE_NONE;
	} else if (FUNC3(dev)->gen >= 6) {
		uint32_t dimm_c0, dimm_c1;
		dimm_c0 = FUNC1(MAD_DIMM_C0);
		dimm_c1 = FUNC1(MAD_DIMM_C1);
		dimm_c0 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;
		dimm_c1 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;
		/* Enable swizzling when the channels are populated with
		 * identically sized dimms. We don't need to check the 3rd
		 * channel because no cpu with gpu attached ships in that
		 * configuration. Also, swizzling only makes sense for 2
		 * channels anyway. */
		if (dimm_c0 == dimm_c1) {
			swizzle_x = I915_BIT_6_SWIZZLE_9_10;
			swizzle_y = I915_BIT_6_SWIZZLE_9;
		} else {
			swizzle_x = I915_BIT_6_SWIZZLE_NONE;
			swizzle_y = I915_BIT_6_SWIZZLE_NONE;
		}
	} else if (FUNC7(dev)) {
		/* On Ironlake whatever DRAM config, GPU always do
		 * same swizzling setup.
		 */
		swizzle_x = I915_BIT_6_SWIZZLE_9_10;
		swizzle_y = I915_BIT_6_SWIZZLE_9;
	} else if (FUNC5(dev)) {
		/* As far as we know, the 865 doesn't have these bit 6
		 * swizzling issues.
		 */
		swizzle_x = I915_BIT_6_SWIZZLE_NONE;
		swizzle_y = I915_BIT_6_SWIZZLE_NONE;
	} else if (FUNC8(dev) || (FUNC6(dev) && !FUNC4(dev))) {
		uint32_t dcc;

		/* On 9xx chipsets, channel interleave by the CPU is
		 * determined by DCC.  For single-channel, neither the CPU
		 * nor the GPU do swizzling.  For dual channel interleaved,
		 * the GPU's interleave is bit 9 and 10 for X tiled, and bit
		 * 9 for Y tiled.  The CPU's interleave is independent, and
		 * can be based on either bit 11 (haven't seen this yet) or
		 * bit 17 (common).
		 */
		dcc = FUNC1(DCC);
		switch (dcc & DCC_ADDRESSING_MODE_MASK) {
		case DCC_ADDRESSING_MODE_SINGLE_CHANNEL:
		case DCC_ADDRESSING_MODE_DUAL_CHANNEL_ASYMMETRIC:
			swizzle_x = I915_BIT_6_SWIZZLE_NONE;
			swizzle_y = I915_BIT_6_SWIZZLE_NONE;
			break;
		case DCC_ADDRESSING_MODE_DUAL_CHANNEL_INTERLEAVED:
			if (dcc & DCC_CHANNEL_XOR_DISABLE) {
				/* This is the base swizzling by the GPU for
				 * tiled buffers.
				 */
				swizzle_x = I915_BIT_6_SWIZZLE_9_10;
				swizzle_y = I915_BIT_6_SWIZZLE_9;
			} else if ((dcc & DCC_CHANNEL_XOR_BIT_17) == 0) {
				/* Bit 11 swizzling by the CPU in addition. */
				swizzle_x = I915_BIT_6_SWIZZLE_9_10_11;
				swizzle_y = I915_BIT_6_SWIZZLE_9_11;
			} else {
				/* Bit 17 swizzling by the CPU in addition. */
				swizzle_x = I915_BIT_6_SWIZZLE_9_10_17;
				swizzle_y = I915_BIT_6_SWIZZLE_9_17;
			}
			break;
		}
		if (dcc == 0xffffffff) {
			FUNC0("Couldn't read from MCHBAR.  "
				  "Disabling tiling.\n");
			swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
			swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;
		}
	} else {
		/* The 965, G33, and newer, have a very flexible memory
		 * configuration.  It will enable dual-channel mode
		 * (interleaving) on as much memory as it can, and the GPU
		 * will additionally sometimes enable different bit 6
		 * swizzling for tiled objects from the CPU.
		 *
		 * Here's what I found on the G965:
		 *    slot fill         memory size  swizzling
		 * 0A   0B   1A   1B    1-ch   2-ch
		 * 512  0    0    0     512    0     O
		 * 512  0    512  0     16     1008  X
		 * 512  0    0    512   16     1008  X
		 * 0    512  0    512   16     1008  X
		 * 1024 1024 1024 0     2048   1024  O
		 *
		 * We could probably detect this based on either the DRB
		 * matching, which was the case for the swizzling required in
		 * the table above, or from the 1-ch value being less than
		 * the minimum size of a rank.
		 */
		if (FUNC2(C0DRB3) != FUNC2(C1DRB3)) {
			swizzle_x = I915_BIT_6_SWIZZLE_NONE;
			swizzle_y = I915_BIT_6_SWIZZLE_NONE;
		} else {
			swizzle_x = I915_BIT_6_SWIZZLE_9_10;
			swizzle_y = I915_BIT_6_SWIZZLE_9;
		}
	}

	dev_priv->mm.bit_6_swizzle_x = swizzle_x;
	dev_priv->mm.bit_6_swizzle_y = swizzle_y;
}