#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  fb_heap; int /*<<< orphan*/  gart_heap; scalar_t__ page_flipping; } ;
typedef  TYPE_1__ drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_file*,TYPE_1__*) ; 

void FUNC2(struct drm_device *dev, struct drm_file *file_priv)
{
	if (dev->dev_private) {
		drm_radeon_private_t *dev_priv = dev->dev_private;
		dev_priv->page_flipping = 0;
		FUNC0(file_priv, dev_priv->gart_heap);
		FUNC0(file_priv, dev_priv->fb_heap);
		FUNC1(file_priv, dev_priv);
	}
}