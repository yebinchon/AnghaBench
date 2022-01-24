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
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  vbl_received; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

u32 FUNC1(struct drm_device *dev, int crtc)
{
	const drm_r128_private_t *dev_priv = dev->dev_private;

	if (crtc != 0)
		return 0;

	return FUNC0(&dev_priv->vbl_received);
}