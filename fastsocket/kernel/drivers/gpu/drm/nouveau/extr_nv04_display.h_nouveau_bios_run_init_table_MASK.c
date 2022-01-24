#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct nvbios_init {int crtc; int execute; struct dcb_output* outp; int /*<<< orphan*/  offset; struct nouveau_bios* bios; int /*<<< orphan*/  subdev; } ;
struct nouveau_device {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct drm_device {int dummy; } ;
struct dcb_output {int dummy; } ;

/* Variables and functions */
 struct nouveau_bios* FUNC0 (struct nouveau_device*) ; 
 struct nouveau_device* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bios*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios_init*) ; 

__attribute__((used)) static inline void
FUNC4(struct drm_device *dev, u16 table,
			    struct dcb_output *outp, int crtc)
{
	struct nouveau_device *device = FUNC1(dev);
	struct nouveau_bios *bios = FUNC0(device);
	struct nvbios_init init = {
		.subdev = FUNC2(bios),
		.bios = bios,
		.offset = table,
		.outp = outp,
		.crtc = crtc,
		.execute = 1,
	};

	FUNC3(&init);
}