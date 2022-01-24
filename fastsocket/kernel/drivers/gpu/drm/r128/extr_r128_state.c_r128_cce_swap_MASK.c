#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {scalar_t__ nbox; int dirty; } ;
typedef  TYPE_1__ drm_r128_sarea_t ;
struct TYPE_6__ {TYPE_1__* sarea_priv; } ;
typedef  TYPE_2__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 scalar_t__ R128_NR_SAREA_CLIPRECTS ; 
 int R128_UPLOAD_CONTEXT ; 
 int R128_UPLOAD_MASKS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
	FUNC2("\n");

	FUNC3(dev, file_priv);

	FUNC1(dev_priv);

	FUNC4(dev_priv);

	if (sarea_priv->nbox > R128_NR_SAREA_CLIPRECTS)
		sarea_priv->nbox = R128_NR_SAREA_CLIPRECTS;

	FUNC5(dev);
	dev_priv->sarea_priv->dirty |= (R128_UPLOAD_CONTEXT |
					R128_UPLOAD_MASKS);

	FUNC0();
	return 0;
}