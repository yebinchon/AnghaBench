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
struct nv04_mode_state {TYPE_1__* crtc_reg; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * DAC; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int) ; 
 scalar_t__ NV_PRMDIO_PALETTE_DATA ; 
 scalar_t__ NV_PRMDIO_PIXEL_MASK ; 
 int NV_PRMDIO_PIXEL_MASK_MASK ; 
 scalar_t__ NV_PRMDIO_READ_MODE_ADDRESS ; 
 int NV_PRMDIO_SIZE ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev, int head,
		      struct nv04_mode_state *state)
{
	struct nouveau_device *device = FUNC1(dev);
	int head_offset = head * NV_PRMDIO_SIZE, i;

	FUNC3(device, NV_PRMDIO_PIXEL_MASK + head_offset,
				NV_PRMDIO_PIXEL_MASK_MASK);
	FUNC3(device, NV_PRMDIO_READ_MODE_ADDRESS + head_offset, 0x0);

	for (i = 0; i < 768; i++) {
		state->crtc_reg[head].DAC[i] = FUNC2(device,
				NV_PRMDIO_PALETTE_DATA + head_offset);
	}

	FUNC0(dev, head, false);
}