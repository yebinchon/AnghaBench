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
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ current_page; scalar_t__ page_flipping; int /*<<< orphan*/  crtc_offset_cntl; int /*<<< orphan*/  crtc_offset; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  R128_CRTC_OFFSET ; 
 int /*<<< orphan*/  R128_CRTC_OFFSET_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	FUNC1("\n");

	FUNC2(R128_CRTC_OFFSET, dev_priv->crtc_offset);
	FUNC2(R128_CRTC_OFFSET_CNTL, dev_priv->crtc_offset_cntl);

	if (dev_priv->current_page != 0) {
		FUNC3(dev);
		FUNC0();
	}

	dev_priv->page_flipping = 0;
	return 0;
}