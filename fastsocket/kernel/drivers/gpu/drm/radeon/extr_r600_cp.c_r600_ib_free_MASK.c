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
struct drm_file {int /*<<< orphan*/  master; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
struct drm_buf {int dummy; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ ,struct drm_buf*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev, struct drm_buf *buf,
			struct drm_file *fpriv, int l, int r)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;

	if (buf) {
		if (!r)
			FUNC1(dev, buf, 0, l * 4);
		FUNC2(dev, fpriv->master, buf);
		FUNC0();
	}
}