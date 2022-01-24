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
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_mga_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MGA_IEN ; 
 int MGA_SOFTRAPEN ; 
 int MGA_VLINEIEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct drm_device *dev, int crtc)
{
	drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;

	if (crtc != 0) {
		FUNC0("tried to enable vblank on non-existent crtc %d\n",
			  crtc);
		return 0;
	}

	FUNC1(MGA_IEN, MGA_VLINEIEN | MGA_SOFTRAPEN);
	return 0;
}