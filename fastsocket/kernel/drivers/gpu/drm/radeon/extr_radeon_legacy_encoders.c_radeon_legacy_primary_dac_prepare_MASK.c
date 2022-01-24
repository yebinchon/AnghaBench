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
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	struct radeon_device *rdev = encoder->dev->dev_private;

	if (rdev->is_atom_bios)
		FUNC0(encoder, true);
	else
		FUNC1(encoder, true);
	FUNC2(encoder, DRM_MODE_DPMS_OFF);
}