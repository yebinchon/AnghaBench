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
struct drm_device_dma {scalar_t__ buf_count; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; struct drm_device_dma* dma; } ;
typedef  int /*<<< orphan*/  drm_r128_private_t ;
struct TYPE_3__ {scalar_t__ idx; } ;
typedef  TYPE_1__ drm_r128_blit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DRM_CURRENTPID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_device*,struct drm_file*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	struct drm_device_dma *dma = dev->dma;
	drm_r128_private_t *dev_priv = dev->dev_private;
	drm_r128_blit_t *blit = data;
	int ret;

	FUNC4(dev, file_priv);

	FUNC1(dev_priv);

	FUNC2("pid=%d index=%d\n", DRM_CURRENTPID, blit->idx);

	if (blit->idx < 0 || blit->idx >= dma->buf_count) {
		FUNC3("buffer index %d (of %d max)\n",
			  blit->idx, dma->buf_count - 1);
		return -EINVAL;
	}

	FUNC5(dev_priv);
	FUNC6(dev_priv);

	ret = FUNC7(dev, file_priv, blit);

	FUNC0();
	return ret;
}